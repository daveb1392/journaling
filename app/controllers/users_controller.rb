class UsersController < ApplicationController
before_action :set_user, only: [:show, :edit, :update]
before_action :validate_user, only: [:show, :edit, :update]
    # def index
    #     # @users = User.all
    # end

    def new
        @user = User.new
    end

    # def create
    #     @user = User.new(user_params)
    #     if @user.save
    #         session[:user_id] = @user.id
    #         flash[:success] = "Welcome to your Journals #{@user.username}"
    #         redirect_to journals_path
    #     else
    #         render 'new'
    #     end      
    # end
    
    def create
        @user = User.create(user_params)
            if @user
            session[:user_id] = @user.id
            flash[:success] = "Welcome to Book & Zhen #{@user.username}"
            redirect_to root_path
    else
        render 'new'
    end
end

    def show  
        @user_journals = @user.journals.paginate(page: params[:page], per_page: 5)
    end

    def edit
    end

    def update
        if @user.update(user_params)
            flash[:success] = "Your account was updated successfully"
            redirect_to journals_path
        else
            render 'edit'
        end
    end

private 

    def set_user
        @user = User.find(params[:id])
    end

    def validate_user
        unless @user == current_user
            flash[:notice] = "To access YOUR account, please login or register a new account"
        end
    end

    def user_params
        params.require(:user).permit(:username, :email, :password)
    end


end