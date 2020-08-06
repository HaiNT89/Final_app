class Follow < ApplicationRecord
    belongs_to :person_doing_the_following, class_name: "Account", foreign_key: "follower_id"
    belongs_to :person_being_followed, class_name: "Account", foreign_key: "followee_id"
end
