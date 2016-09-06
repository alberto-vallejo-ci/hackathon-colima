application.controller('ContactFormController', ['$scope', '$http', 'FlashMessage', function($scope, $http, FlashMessage){
    var vm = $scope;

    vm.contact = {}

    vm.onSubmit = function(){
        if(vm.form.$valid){
            $http.post('/contact', {contact: vm.contact}).then(function(response) {
                FlashMessage.create({ text: 'Su mensaje se ha enviado correctamente', type: 'success'});
                vm.contact = {}
                vm.form.$setPristine(true);
            }, function errorCallback(response) {
                FlashMessage.create({ text: 'Ocurrió un error inesperado, por favor intente de nuevo', type: 'alert'});
            });
        } else {
            FlashMessage.create({ text: 'Por favor, verifique que su información es correcta e inténtelo de nuevo', type: 'alert'});
        };
    }
}])
