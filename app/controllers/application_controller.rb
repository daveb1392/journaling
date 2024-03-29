class ApplicationController < ActionController::Base
    helper_method :current_user, :logged_in?, :require_user

    # def current_user
    #     @current_user ||= User.find(session[:user_id]) if
    #     session[:user_id]        
    # end

    def current_user
        if session[:user_id]
          User.find(session[:user_id])
        end
    end

    def logged_in?
        !!current_user
    end

    def require_user
        if !logged_in
            flash[:danger] = "You must be logged in to perform this action"
            redirect_to root_path
        end
    end

end
