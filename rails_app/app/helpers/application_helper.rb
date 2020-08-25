module ApplicationHelper

    def follow(user_id)
        followee_relationships.create(followee_id: user_id)
    end
    
    def unfollow(user_id)
        followee_relationships.find_by(followee_id: user_id).destroy
    end

    def current_user_is_following(current_user_id, followed_user_id)
        relationship = Follow.find_by(follower_id: current_user_id, followee_id: followed_user_id)
        return true if relationship
    end
end
