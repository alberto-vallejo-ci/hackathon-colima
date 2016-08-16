$ ->
  window.HackColima ||= {}

  class HackColima.Menu
    menu: '#menu'
    welcome: '#welcome'

    constructor: ->
      @bindEvents()

    bindEvents: ->
      $(window).on 'scroll', =>
        @findPosition()

    findPosition: ->
      limit = $(@welcome).height() + $(@menu).height()
      scrollTop = $(window).scrollTop()
      elementOffset = $(@menu).offset().top
      distance = (elementOffset - scrollTop)

      if distance <= 0 && scrollTop > limit
        $(@menu).addClass('fixed')
      else
        $(@menu).removeClass('fixed')

  new HackColima.Menu
