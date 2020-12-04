class Api::SessionsController < ApplicationController
    def create 
        if @user = User.find_by_credentials(params[:user][:username], params[:user][:password])
            login!(@user)
            render :show
        else
            @user = User.new(username: params[:user][:username])
            render json: ['Invalid username/password combination'], status: 422
        end
    end
end