class Api::UsersController < ApplicationController
    def create
        @user = User.new(users_params)
        if @user.save
            login!(@user)
            render :show
        else

        end
    end

    private
    def users_params
        params.require(:user).permit(:username, :password)
    end
end
