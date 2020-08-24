module Profile
    class PhotosController < ApplicationController
        def show
            @users = User.find(params[:id])
            @photos = @users.photos
        end
    end
end
