class SessionsController < ApplicationController 

def new
    
end

# def create
#     @user = User.find_by(email: params[:session][:email].downcase)
#     if @user && @user.authenticate(params[:session][:password])
#         session[:user_id] = @user.id
#         flash.now[:success] = "You're logged in"
#         redirect_to root_path
#     else
#         flash.now[:danger] = "Something is wrong check your details"
#         render 'new'
#     end  
# end

def destroy
    session[:user_id] = nil 
    flash.now[:success] = "Logged out"
    redirect_to root_path   
end

    def create
        user = User.find_by(email: params[:session][:email].downcase)
        if user && user.authenticate(params[:session][:password])
            session[:user_id] = user.id
            flash[:success] = "You're logged in"
            redirect_to user_path(user)
        else
            flash.now[:danger] = "Something is wrong check your details"
            render 'new'
        end  
    end

    def destroy
        session[:user_id] = nil 
        flash[:success] = "Logged out"
        redirect_to root_path   
    end


end