class RelationshipsController < ApplicationController
  def follow_user
    @user = User.find_by! id: params[:id]
    if current_user.follow @user.id
      # respond_to do |format|
      #   format.html { redirect_to root_path }
      #   format.js
      # end
      redirect_to profile_photo_path
    end
  end

  def unfollow_user
    @user = User.find_by! id: params[:id]
    if current_user.unfollow @user.id
      # respond_to do |format|
      #   format.html { redirect_to root_path }
      #   format.js
      # end
      redirect_to profile_photo_path
    end
  end
end
