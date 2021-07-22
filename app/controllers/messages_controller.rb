class MessagesController < ApplicationController
    before_action :require_user
    
    def create
        message = current_user.messages.build(message_params)
        #if message.save
       
        ActionCable.server.broadcast "chatroom_channel", foo: message.body, name:message.user.username

        #end
    end
    
    private
    
    def message_params
        for i in 1..5 
            puts ""
        end
        puts params
        params.permit(:body)
    end
    
    
end
