application.controller('ChallengeFormController', function($scope, $http, FlashMessage) {
  var vm = $scope;

  vm.challenge = {}

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
});
