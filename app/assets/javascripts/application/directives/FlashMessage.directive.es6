application.directive('flashMessage', function($timeout){
    return {
        restrict: 'A',
        scope: {
          messages: '=',
          message: '='
        },
        link: function($scope, $element){
            let deleteMessage = () => {
                $element.fadeOut( () => {
                    let index = $scope.messages.indexOf($scope.message);
                    $scope.messages.splice(index, 1);
                });
            }
            $element.on('click', deleteMessage);
            $timeout(deleteMessage, 3000);
        }
    }
})
