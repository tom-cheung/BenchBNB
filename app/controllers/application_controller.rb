class ApplicationController < ActionController::Base
    def current_user
        @current_user ||= User.find_by(session_token: session[:session_token])
    end

    # def require_logged_in
    #     unless logged_in?
    # end

    def login!(user)
        session[:session_token] = user.reset_session_token!
        @current_user = user
    end

    def logged_in?
        !!current_user
    end

    def logout!
        @current_user.reset_session_token!
        session[:session_token] = nil
        @current_user = nil
    end
end
