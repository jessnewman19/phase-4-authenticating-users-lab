class SessionsController < ApplicationController

    #Creating the session / NOT creating the user
    def create 
        user = User.find_by(username: params[:username])
        session[:user_id] = user.id 
        render json: user
    end

    #NOTE the difference between using delete and destroy
    def destroy 
        session.delete :user_id
        head :no_content
    end

end
