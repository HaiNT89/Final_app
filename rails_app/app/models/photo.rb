class Photo < ApplicationRecord
    belongs_to :user, counter_cache: :count_photo
    has_many :reactions, as: :reactable, dependent: :destroy
    mount_uploader :image, PictureUploader
     
    # validates :title, :description, :image, :mode, presence: true
    # validates :title, length: {minimum:5, maximum:140}
    # validates :description, length: {minimum:10, maximum:300}
    # validates :mode, acceptance: { accept: ['private', 'public'] }
    # validates :image, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
end
