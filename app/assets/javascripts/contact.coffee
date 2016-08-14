$ ->
  window.HackColima ||= {}

  class HackColima.Map
    map_area: '#contact .map-container'

    constructor: ->
      @map = @setMap()
      @setMarker()

    defultMapOptions: ->
      {
        center: { lat: 19.2626194, lng: -103.7237538 },
        disableDefaultUI: false,
        zoom: 15
      }

    setMarker: ->
      new google.maps.Marker
        position: { lat: 19.2626194, lng: -103.7237538 },
        map: @map,
        title: 'HackColima - Instituto Tecnológico de Colima'

    setMap: ->
      element = $(@map_area).get(0)
      new google.maps.Map(element, @defultMapOptions());

  new HackColima.Map
