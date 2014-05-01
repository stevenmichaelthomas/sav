#= require lib/d3.min.js
#= require stats_circles

homeHero = document.getElementById 'stats-circles'

setTimeout ->
  circles = new StatsCircles(homeHero)
  circles.render()
, 1
