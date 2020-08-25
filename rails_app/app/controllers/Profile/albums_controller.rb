module Profile
    class AlbumsController < ApplicationController
        before_action :authenticate_user!, only: [:edit, :show, :update, :destroy]
        def show
            @users = User.find(params[:id])
            @photos = @users.photos
        end
    end
end
