class Follow < ApplicationRecord
    belongs_to :follower, class_name: "User", foreign_key: "follower_id", counter_cache: :count_follower
    belongs_to :followee, class_name: "User", foreign_key: "followee_id", counter_cache: :count_followee
end
