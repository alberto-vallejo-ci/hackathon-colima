application.directive('googleMap', function(){
    return {
        restrict: 'A',
        scope: {
            lat: '<',
            lng: '<',
            zoom: '<',
            title: '<'
        },
        link: function($scope, $element){
            let map = new google.maps.Map($($element).get(0), {
                scrollwheel: false,
                center: { lat: $scope.lat, lng: $scope.lng },
                disableDefaultUI: false,
                zoom: $scope.zoom
            })
            new google.maps.Marker({
              position: { lat: $scope.lat, lng: $scope.lng },
              map: map,
              title: $scope.title
            })
        }
    }
})
