class ReactionsController < ApplicationController
    def react_photo
        
        @photo = Photo.find(params[:id])
        @react = @photo.reactions.create(user_id: current_user.id)
        if @react.save
            redirect_to photos_path
        end
    end
end
