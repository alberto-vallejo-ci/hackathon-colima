application.controller('ContactFormController', ['$scope', '$http', 'FlashMessage', function($scope, $http, FlashMessage){
    var vm = $scope;

    vm.contact = {}

    vm.onSubmit = function(){
        if(vm.form.$valid){
            vm.ui.disableSubmit = true;
            $http.post('/contact', {contact: vm.contact}).then(function(response) {
                FlashMessage.create({ text: 'Su mensaje se ha enviado correctamente', type: 'success'});
                vm.contact = {};
                vm.form.$setPristine(true);
            }, function errorCallback(response) {
                FlashMessage.create({ text: 'Ocurrió un error inesperado, por favor intente de nuevo', type: 'alert'});
            }).finally(function(){
                vm.ui.disableSubmit = false;
            });
        } else {
            FlashMessage.create({ text: 'Por favor, verifique que su información es correcta e inténtelo de nuevo', type: 'alert'});
        };
    }
}])
