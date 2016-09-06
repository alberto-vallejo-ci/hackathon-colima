$ ->
  window.HackColima ||= {}

  class HackColima.Challenges
    constructor: ->
      @bindEvents()

    bindEvents: ->
      $('.categories a').on 'click', (event)=>
        event.preventDefault()
        $category = $(event.currentTarget).parents('li')
        @evaluateFilter($category)

    evaluateFilter: ($category)->
      value = $category.find('a').data('value')
      return @removeFilter($category, value) if $category.hasClass('active')
      @applyFilter($category, value)

    applyFilter: ($category, value)->
      $category.addClass('active')
      @hideAll() if @totalActives() is 1
      $(".challenge[data-value=#{value}]").removeClass('hidden')

    removeFilter: ($category, value)->
      $category.removeClass('active')
      $(".challenge[data-value=#{value}]").addClass('hidden')
      @showAll() if @totalActives() is 0

    showAll: ->
      $('.challenge').removeClass('hidden')

    hideAll: ->
      $('.challenge').addClass('hidden')

    totalActives: ->
      $('.categories .active').length


  new HackColima.Challenges()
