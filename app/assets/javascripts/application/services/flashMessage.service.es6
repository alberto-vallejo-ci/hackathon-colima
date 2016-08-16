application.service('FlashMessage', function(){
    let messages = []
    this.create = function(message){
        messages.push(message)
        return true
    }
    this.getMessages = function(){
        return messages
    }
})
