application.component('flashMessages', {
    restrict: 'E',
    templateUrl: 'components/flashMessages.html',
    controller: function($element, FlashMessage){
        let vm = this

        vm.classMap = {
            alert: 'bg-danger',
            success: 'bg-success'
        }

        vm.messages = FlashMessage.getMessages();
    }
})
