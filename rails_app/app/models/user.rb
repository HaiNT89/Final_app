class User < ApplicationRecord
  has_many :photos, dependent: :destroy
  has_many :albums, dependent: :destroy
  has_many :reactions, dependent: :destroy
  mount_uploader :avatar, PictureUploader
  #follow
  has_many :followee_relationships, foreign_key: :follower_id, class_name: "Follow"
  has_many :followees, through: :followee_relationships, source: :followee

  has_many :follower_relationships, foreign_key: :followee_id, class_name: "Follow"
  has_many :followers, through: :follower_relationships, source: :follower

  def follow(user_id)
    followee_relationships.create(followee_id: user_id)
  end

  def unfollow(user_id)
      followee_relationships.find_by(followee_id: user_id).destroy
  end

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
