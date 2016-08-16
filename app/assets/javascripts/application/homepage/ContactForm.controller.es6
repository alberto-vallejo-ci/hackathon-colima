application.controller('ContactFormController', function($scope, $http, FlashMessage){
    var vm = $scope;

    vm.contact = {}

    vm.onSubmit = function(){
        console.log(vm.contact);
        $http.post('/contact', {contact: vm.contact}).then(function(response) {
            FlashMessage.create({ text: 'Su mensaje se ha enviado correctamente :)', type: 'success'});
        }, function errorCallback(response) {
            FlashMessage.create({ text: 'Ocurrió un error inesperado, por favor intente de nuevo', type: 'alert'});
        });
    }
})
