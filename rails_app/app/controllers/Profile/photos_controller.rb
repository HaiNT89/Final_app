module Profile
    class PhotosController < ApplicationController
        before_action :authenticate_user!, only: [:edit, :show, :update, :destroy]
        def show
            @users = User.find(params[:id])
            @photos = @users.photos
        end
    end
end
