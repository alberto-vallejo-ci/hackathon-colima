let application = angular.module('application', ['templates', 'ngParallax']);

application.run(['$rootScope', function($rootScope){
    $('[data-toggle="tooltip"]').tooltip();
}])
