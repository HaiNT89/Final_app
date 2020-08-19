class PhotosController < ApplicationController
    def index
        @photos = Photo.all
    end
    def edit
        @photos = Photo.find(params[:id])
    end
end
