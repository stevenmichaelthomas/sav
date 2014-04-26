#= require lib/d3.min.js
#= require stats_circles

homeHero = document.getElementById 'stats-circles'

console.log(homeHero)

setTimeout ->
  circles = new StatsCircles(homeHero)
  circles.render()
, 1


