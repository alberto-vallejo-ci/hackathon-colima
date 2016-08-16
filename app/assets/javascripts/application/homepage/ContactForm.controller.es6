application.controller('ContactFormController', function($scope, FlashMessage){
    var vm = $scope;

    vm.onSubmit = function(){
        FlashMessage.create({ text: 'This is text', type: 'success'});
    }
})
