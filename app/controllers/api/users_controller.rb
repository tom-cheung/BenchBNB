class Api::UsersController < ApplicationController

    # /api/users 'POST' hits this controller method 
    # this uses methods from the user model to interact with the users table 
    def create
        @user = User.new(users_params)

        if @user.save
            login!(@user)
            render :show
        else
            render json: @user.errors.full_messages     
        end
    end

    private
    def users_params
        params.require(:user).permit(:username, :password)
    end
end

 