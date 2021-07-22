class LoginController < ApplicationController

    before_action :logged_in_redirect, only: [:new, :create]

    def new 
    end

    def create
    puts(params)
    user = User.find_by(username: params[:session][:username].to_s)
    # if(user==nil)
    #   for i in 1..5
    #     puts "hello"
    # end 
    #   puts params[:session][:username].to_s
    # end
    if user && user.authenticate(params[:session][:password].to_s)
        session[:user_id] = user.id
        flash[:success] = "You have successfully logged in"
        redirect_to root_path
    else
        for i in 1..5
            puts "helloaaddd"
        end 
        puts user.u
        flash.now[:error] = "There was something wrong with your login information"
        render 'new'
    end
    end

    def destroy
    session[:user_id] = nil
    flash[:success] = "You have successfully logged out"
    redirect_to login_path
    end

    private
    def logged_in_redirect
    if logged_in?
      flash[:error] = "You are already logged in"
      redirect_to root_path
    end
  end
end
