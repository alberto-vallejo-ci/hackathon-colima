application.directive('scrollViewAfter', ["$window", function ($window) {
    return {
        restrict: 'A',
        link: function($scope, $element, $attrs) {
            let onScroll = function(){
                if ($window.pageYOffset >= $($attrs.scrollViewAfter).height()){
                    $element.removeClass('out');
                    $element.addClass('enter');
                } else {
                    if($element.hasClass('enter')){
                        $element.removeClass('enter');
                        $element.addClass('out');
                    }
                };
            }
            onScroll();
            angular.element($window).bind("scroll", function() {
                $scope.$apply(onScroll);
            });
        }
    };
}])
