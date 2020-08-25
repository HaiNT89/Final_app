class UsersController < ApplicationController
    before_action :authenticate_user!, only: [:edit, :show, :update, :destroy]
    def show
        @users = User.find(params[:id])
        @photos = @users.photos
    end
    # def edit
    #     @users = User.find(params[:id])
    # end
    # def update
    #     @users = User.find(params[:id])
    #     if @users.update(user_params)
    #         #flash[:success] = 'The photo has just updated'
    #         redirect_to users_path     
    #     else
    #         render 'edit'
    #     end
    # end
    # private
    # def user_params
    #     params.require(:user).permit(:first_name, :last_name,:email,:password, :password_confirmation)
    # end
end
