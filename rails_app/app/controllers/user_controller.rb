class UserController < ApplicationController
    def edit_profile_user
        @user = User.find(params[:id])
        if @user.update(user_params)
            flash[:success] = 'The user has just updated'
            redirect_to root_path
        else
            redirect_to edit_user_registration_path
        end
    end
    private
    def user_params
        params.require(:user).permit(:first_name, :last_name,:email, :avatar)
    end
end
