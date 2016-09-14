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
  }

  vm.resetForm = function(){
      if(vm.form) vm.form.$setPristine(true);
      vm.ui.knowsLocation = 'false';
      vm.challenge = {
          is_looking_for_team: 'true'
      };
  }

  vm.onSubmit = function() {
      console.log(vm.challenge);
      vm.ui.disableSubmit = true
      $('#nuevoreto').modal('hide')
      $('#confirmation').modal('show')
    //   $http.post('/challenge', { challenge: vm.challenge }).then(
    //      function(response) {
    //          window.location.reload();
    //      },
    //      function errorCallback(response) {
    //          FlashMessage.create({ text: 'Ocurrió un error inesperado, por favor intente de nuevo', type: 'alert' });
    //      }
    //   ).finally(function(){ vm.ui.disableSubmit = false });
  }

  vm.resetForm();
}]);
