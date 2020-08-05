class Account < ApplicationRecord
    has_many :photos, dependent: :destroy
    has_many :albums, dependent: :destroy
    has_many :reactions, dependent: :destroy

    # #follow
    # has_many :active_follows, class_name: Follower.name,
    # foreign_key: :follower_id
    # has_many :following, through: :active_follow,
    # source: :followed

    # has_many :passive_follows, class_name: Follower.name,
    # foreign_key: :followed_id
    # has_many :follower, through: :active_follow

    #validate
    validates :first_name,:last_name,:email,:password, presence: true
    validates :first_name,:last_name, length: {minimum:1, maximum:25}
    validates :email,  length: {minimum:5, maximum:255},uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :password, length: {minimum:8, maximum:64}, confirmation: true
    validates :avatar, format: { with: %r{.(jpg|png)\Z}i, message: 'must be a URL for JPG or PNG image.' }
    
end
