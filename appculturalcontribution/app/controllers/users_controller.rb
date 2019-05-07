class UsersController < ApplicationController
    def index
        @users = User.all 
    end

    def show
        @users = User.find(params[:id])
    end
        
    def edit
        @user = User.find params[:id]
    end
        
    def update
        @user = User.find params[:id]
        @user.update_attributes!(user_params)
        flash[:notice] = "User: '#{@user.fname}' was successfully updated."
        redirect_to events_path
    end
    
    def user_params
    params.require(:user).permit(:star_id,:fname,:lname,:dob,:role,:email,:password_digest)
    end
    
    
    
    
    
    
end
