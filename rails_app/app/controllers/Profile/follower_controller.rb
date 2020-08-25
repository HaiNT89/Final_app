module Profile
    class FollowerController < ApplicationController
        before_action :authenticate_user!, only: [:edit, :show, :update, :destroy]
        def show
            @users = User.find(params[:id])
            @followee = @users.follower_relationships
        end
    end
end
