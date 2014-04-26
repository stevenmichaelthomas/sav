class @StatsCircles
  @CIRCLE_COUNT: 100

  constructor: (@el) ->
    @circles = []
    @width   = @el.offsetWidth
    @height  = @el.offsetHeight
    @frameCounter = 0

    number_of = @el.getAttribute("data-number")
    total = @el.getAttribute("data-total")
    @active_percentage = Math.round((number_of / total) * 100);

    @colors = [
      "#C7406F",
      "#EAEBE8",
      "transparent"
    ]

  render: =>
    return this if @rendered
    @rendered = true

    @svg = d3.select(@el).append('svg')
      .attr('width', @width)
      .attr('height', @height)

    @data =
      for x in [0..@constructor.CIRCLE_COUNT]
        {
          x: if x == 0 then @width / 2 else @width * Math.random()
          y: if x == 0 then @height / 2 else @height * Math.random()
          vbX: 0
          vbY: 0
          radius: if x <= @active_percentage then 20 else 16
          color: if x == 0
                   @colors[2]
                 else if x <= @active_percentage
                   @colors[0]
                 else
                   @colors[1]

          fixed: true if x == 0
        }

    @circles = @svg.selectAll('circle')
        .data(@data)
        .enter().append('circle')
        .attr('class', (d) -> 'radius-' + d.radius)
        .attr('cx', (d) -> d.x)
        .attr('cy', (d) -> d.y)
        .attr('fill', (d) -> d.color)
        .attr('r', (d) -> d.radius)

    force = d3.layout.force()
        .gravity(.04)
        .charge((d, i) -> if i then -40 else -2000)
        .size([@width, @height])
        .nodes(@data)
        .on('tick', @_tick)
        .start()

    return this

  _tick: (e) =>
    q = d3.geom.quadtree(@data)
    i = 1
    n = @data.length

    q.visit(@_collide(@data[i])) while ++i < n

    @svg.selectAll("circle")
        .attr("cx", (d, i) -> d.x)
        .attr("cy", (d, i) -> d.y)

  _collide: (node) =>
    r = node.radius + 16
    nx1 = node.x - r
    nx2 = node.x + r
    ny1 = node.y - r
    ny2 = node.y + r

    return (quad, x1, y1, x2, y2) ->
      if quad.point && quad.point != node
        x = node.x - quad.point.x
        y = node.y - quad.point.y
        l = Math.sqrt(x * x + y * y)
        r = node.radius + quad.point.radius

        if l < r
          l = (l - r) / l * .5
          node.x -= x*= l
          node.y -= y *= l
          quad.point.x += x
          quad.point.y += y

      return x1 > nx2 || x2 < nx1 || y1 > ny2 || y2 < ny1;

  tick: =>
    @frameCounter += 1

    if @frameCounter is 2
      @frameCounter = 0

      for plane in @circles
        for dot in plane
          dot.__data__ = vibrate(dot.__data__)
          dot.setAttribute('cx', dot.__data__.x + dot.__data__.vbX)
          dot.setAttribute('cy', dot.__data__.y + dot.__data__.vbY)

    requestAnimationFrame(@tick)

    return

  vibrate = (d) ->
    vX = if Math.round(Math.random()) then .5 else -.5
    vY = if Math.round(Math.random()) then .5 else -.5

    if Math.abs(d.vbX + vX) > (d.radius * 2)
      d.vbX += (vX * -1)

    else
      d.vbX += vX

    if Math.abs(d.vbY + vY) > (d.radius / 2)
      d.vbY += (vY * -1)
    else
      d.vbY += vY

    d
