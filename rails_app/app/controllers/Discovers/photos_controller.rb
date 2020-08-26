module Discovers
    class PhotosController < ApplicationController
   
        def index
            @photos = Photo.order(created_at: :DESC).where("mode = ?", 'Public')
            @react = Reaction.where("reactable_type=?", 'Photo')
        end

    end
end