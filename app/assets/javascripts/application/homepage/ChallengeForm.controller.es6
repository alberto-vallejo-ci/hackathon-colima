application.controller('ChallengeFormController', ['$scope', '$http', 'FlashMessage', '$location', '$rootScope', function($scope, $http, FlashMessage, $location, $rootScope) {
  var vm = $scope;
  vm.ui = vm.ui || {};
  $rootScope.ui = $rootScope.ui || {};

  vm.challenge = {
      is_looking_for_team: true
  }
  vm.ui.knowsLocation = true

  vm.cancel = function(){
      vm.resetForm();
      $('#nuevoreto').modal('hide');
  }

  vm.resetForm = function(){
      if(vm.form) vm.form.$setPristine(true);
      vm.ui.knowsLocation = 'false';
      vm.challenge = {
          is_looking_for_team: 'true'
      };
  }

  vm.onSubmit = function() {
      $http.post('/challenge', { challenge: vm.challenge }).then(
         function(response) {
             vm.resetForm();
             $('#nuevoreto').modal('hide');
             FlashMessage.create({ text: 'Tu reto se ha registrado correctamente', type: 'success' });
         },
         function errorCallback(response) {
             FlashMessage.create({ text: 'Ocurrió un error inesperado, por favor intente de nuevo', type: 'alert' });
         }
      ).finally(function(){ vm.ui.disableSubmit = false });
  }

  vm.resetForm();
}]);
