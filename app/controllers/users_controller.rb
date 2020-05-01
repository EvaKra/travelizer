class UsersController < ApplicationController
    def show
        @user = User.find(params[:id])
    end

    def edit
        @user = User.find(params[:id])
        respond_to do |format|
            format.html { render :edit }
            format.js { render 'users/edit'}
        end
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        if @user.save 
            respond_to do |format|  
                format.html { redirect_to user_path(@user)}
                format.js { render 'users/update'}
            end  
            # redirect_to user_path(current_user)
        else
            render :edit
        end
    end

    def user_params
        params.require(:user).permit(:description, :first_name, :last_name, :avatar)
    end

    
    
end
