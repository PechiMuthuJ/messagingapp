class ChatroomController < ApplicationController
    before_action :require_user
    def index 
        puts("hhhhhh")
        @message = Message.all 
        
    end
end
