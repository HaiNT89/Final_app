class ReactionsController < ApplicationController
    
    def react_photo    
        @photo = Photo.find(params[:id])
        @react = @photo.reactions.create(user_id: current_user.id)
        if @react.save
            redirect_to photos_path
        end
    end
    def unreact_photo
        @photo = Photo.find(params[:id])
        @react = Reaction.find_by(["user_id=? and reactable_id=?", current_user.id, @photo.id])
        @react.destroy
        redirect_to photos_path
    end
    #Album
    def react_album    
        @album = Album.find(params[:id])
        @react = @album.reactions.create(user_id: current_user.id)
        if @react.save
            redirect_to albums_path
        end
    end
    def unreact_album
        @album = Album.find(params[:id])
        @react = Reaction.find_by(["user_id=? and reactable_id=?", current_user.id, @album.id])
        @react.destroy
        redirect_to albums_path
    end

end
