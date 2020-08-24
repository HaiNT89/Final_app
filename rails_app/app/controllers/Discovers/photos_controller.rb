module Discovers
    class PhotosController < ApplicationController
   
        def index
            @photos = Photo.order(created_at: :DESC).where("mode = ?", 'public')
            @users = User.joins(:photos)
        end

    end
end