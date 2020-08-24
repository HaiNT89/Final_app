module Discovers
    class AlbumsController < ApplicationController
        
        def index
            @albums = Album.order(created_at: :DESC)
            @users = User.joins(:albums)
            @photos = Photo.all
        
        end
        
    end
end
