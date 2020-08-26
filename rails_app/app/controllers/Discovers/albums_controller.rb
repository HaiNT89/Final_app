module Discovers
    class AlbumsController < ApplicationController
        
        def index
            @albums = Album.order(created_at: :DESC).where("mode = ?", 'Public')
            @react = Reaction.where("reactable_type=?", 'Album')
        end
        
    end
end
