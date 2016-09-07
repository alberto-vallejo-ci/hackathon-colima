application.controller('MainController', ['$scope', '$location', '$anchorScroll', function($scope, $location, $anchorScroll) {
    var vm = $scope;

    vm.scrollTo = function(id) {
        $location.hash(id);
        $anchorScroll();
    };
 }]);
