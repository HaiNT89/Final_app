class User < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :albums, dependent: :destroy
  has_many :reactions, dependent: :destroy
  #follow
  has_many :followed_users, foreign_key: :follower_id, class_name: "Follow"
  has_many :followees, through: :followed_users, source: :person_being_followed

  has_many :following_users, foreign_key: :followee_id, class_name: "Follow"
  has_many :followers, through: :following_users, source: :person_doing_the_following

    #validate
    # validates :first_name,:last_name,:email,:password, presence: true
    # validates :first_name,:last_name, length: {minimum:1, maximum:25}
    # validates :email,  length: {minimum:5, maximum:255},uniqueness: true, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    # validates :password, length: {minimum:8, maximum:64}, confirmation: true
    # validates :avatar, format: { with: %r{.(jpg|png)\Z}i, message: 'must be a URL for JPG or PNG image.' }
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
