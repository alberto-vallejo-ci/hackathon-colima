application.controller('ChallengeFormController', function($scope, $http, FlashMessage) {
  var vm = $scope;

  vm.challenge = {}

  vm.onSubmit = function() {
    if(vm.form.$valid) {
      $http.post('/challenge', { challenge: vm.challenge }).then(
        function(response) {
          FlashMessage.create({ text: 'El Reto hs sido guardado exitosamente!', type: 'success' });
        },
        function errorCallback(response) {
          FlashMessage.create({ text: 'Ocurrió un error inesperado, por favor intente de nuevo', type: 'alert' });
        }
      );
    }
    else {
      FlashMessage.create({ text: 'Por favor, verifique que su información es correcta e inténtelo de nuevo', type: 'alert'});
    };
  }
});
