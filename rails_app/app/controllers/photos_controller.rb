class PhotosController < ApplicationController
    before_action :authenticate_user!, only: [:edit, :show, :update, :destroy]
    def index
        @photos = Photo.all
        @users = User.joins(:photos)
    end
    def new
        @photo = current_user.photos.new
    end
    def create
        @photo = current_user.photos.new(photo_params)
        if @photo.save
            #flash[:success] = 'The album has just updated'
            redirect_to photos_path
        else
            render 'new'
        end
    end
    def edit
        @photos = Photo.find(params[:id])
    end
    def update
        @photos = Photo.find(params[:id])
        if @photos.update(photo_params)
            flash[:success] = 'The photo has just updated'
            redirect_to photos_path     
        else
            render 'edit'
        end
    end
    private
    def photo_params
        params.require(:photo).permit(:source_photo, :description,:title,:mode_photo)
    end
end
