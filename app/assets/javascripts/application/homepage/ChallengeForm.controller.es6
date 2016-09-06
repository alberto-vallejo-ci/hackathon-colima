application.controller('ChallengeFormController', ['$scope', '$http', 'FlashMessage', '$location', '$rootScope', function($scope, $http, FlashMessage, $location, $rootScope) {
  var vm = $scope;
  vm.ui = vm.ui || {};
  $rootScope.ui = $rootScope.ui || {};

  if($location.url() == '/new-challenge'){
      $rootScope.ui.registerChallenge = true;
  }

  vm.challenge = {
      is_looking_for_team: true
  }
  vm.ui.knowsLocation = true

  vm.onSubmit = function() {
      console.log(vm.challenge);
       $http.post('/challenge', { challenge: vm.challenge }).then(
         function(response) {
         window.location.reload();
    //       FlashMessage.create({ text: 'El Reto hs sido guardado exitosamente!', type: 'success' });
         },
         function errorCallback(response) {
    //       FlashMessage.create({ text: 'Ocurrió un error inesperado, por favor intente de nuevo', type: 'alert' });
         }
       );
  }
}]);
