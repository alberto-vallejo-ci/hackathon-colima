application.component('flashMessages', {
    restrict: 'E',
    templateUrl: 'components/flashMessages.html',
    controller: function($element, FlashMessage){
        let vm = this

        vm.classMap = {
            alert: 'label-danger',
            success: 'label-success'
        }

        vm.messages = FlashMessage.getMessages();
    }
})
