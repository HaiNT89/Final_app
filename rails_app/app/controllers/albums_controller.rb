class AlbumsController < ApplicationController
    before_action :authenticate_user!, only: [:edit, :show, :update, :destroy]
    def index
        @albums = Album.order(created_at: :DESC)
        @photos = Photo.all    
     end
    def new
        @album = current_user.albums.new
    end
    def create
        @album = current_user.albums.new(album_params)
        @photo = current_user.photos.new(photo_params)
        if @album.save
            @photo.update(album_id: @album.id)
            #flash[:success] = 'The album has just updated'
            redirect_to albums_path
        else
            render 'new'
        end
    end
    def edit
        @albums = Album.find(params[:id])
    end
    def update 
        @albums = Album.find(params[:id])
        if @albums.update(album_params)
            flash[:success] = 'The album has just updated'
            redirect_to albums_path     
        else
            render 'edit'
        end
    end
    def show
        @albums = Album.find(params[:id])
        @photos = @albums.photos
        @account = @albums.user
    end
    private
    def album_params
        params.require(:album).permit(:title, :description, :mode)
    end
    def photo_params
        params.require(:album).permit(:title, :description, :image, :mode)
    end
    
    
end
