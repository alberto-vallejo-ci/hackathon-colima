application.directive('stickyJs', function(){
    return {
        restrict: 'A',
        link: function($scope, $element){
            $($element).sticky();
        }
    }
})
