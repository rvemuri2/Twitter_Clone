class MainController < ApplicationController
    def index
        
        if session[:user_id] 
            @user = User.find_by(id: session[:user_id])
            flash[:message] = "Welcome back", @user
        end
    end
end