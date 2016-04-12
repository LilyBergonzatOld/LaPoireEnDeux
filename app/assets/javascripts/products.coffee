# Place all the behaviors and hooks related to the matching controller here.
# All this logic will automatically be available in application.js.
# You can use CoffeeScript in this file: http://coffeescript.org/
menuFilterResponsive = (menuFilter, displayButton) ->
  if menuFilter.className.match(/after/)
    menuFilter.className = 'col-sm-3 col-xs-12 text-center-xs menu-filter'
    console.log menuFilter.className
  else
    menuFilter.className += ' after'
    console.log menuFilter.className
  return

window.onload = ->
  #Si le menu existe alors on est sur une page correspondante
  menuFilter = 1
  displayButton = 1
  menuFilter = document.getElementsByClassName('menu-filter')[0]
  displayButton = document.getElementsByClassName('display-filter')[0]
  if document.getElementsByClassName('menu-filter')[0]
    displayButton.addEventListener 'click', (->
      if window.innerWidth < 768
        menuFilterResponsive menuFilter, displayButton
      return
    ), false
  return
