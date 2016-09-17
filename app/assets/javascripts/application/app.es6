let application = angular.module('application', ['templates']);

application.run(['$rootScope', function($rootScope){
    $('[data-toggle="tooltip"]').tooltip();
}])
