module Profile
    class FollowingController < ApplicationController
        before_action :authenticate_user!, only: [:edit, :show, :update, :destroy]
        def show
            @users = User.find(params[:id])
            @follower = @users.followee_relationships
        end
    end
end
