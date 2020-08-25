class ReactionsController < ApplicationController
    def new
        
    end
    def create
        @photos = Photo.find(params[:id])
        @react = @photos.reactions.create
        if @react.save
            @react.update (user_id: current_user.id)
            #flash[:success] = 'The album has just updated'
            redirect_to photos_path
        else
            render 'new'
        end
        
    end
end
