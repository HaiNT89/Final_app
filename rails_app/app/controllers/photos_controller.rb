class PhotosController < ApplicationController
    def index
        @photos = Photo.all
    end
    def new
        @photo = Photo.new
    end
    def create
        @photo = Photo.new(photo_params)
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
        params.require(:photo).permit(:source_photo, :description_photo,:title_photo,:mode_photo)
    end
end
