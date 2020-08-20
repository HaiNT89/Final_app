class Album < ApplicationRecord
    belongs_to :user
    has_many :photos, dependent: :destroy
    has_many :reactions, as: :reactable, dependent: :destroy
    mount_uploaders :avatars, PictureUploader
    serialize :avatars, JSON # If you use SQLite, add this line.


    validates :title_album, length: {minimum: 4}, presence: true
    # validates :title_album, :description_album, :source_album, :mode_album, presence: true
    # validates :title_album, length: {minimum:5, maximum:140}
    # validates :description_album, length: {minimum:10, maximum:300}
    # validates :mode_album, acceptance: { accept: ['private', 'public'] }
    # validates :source_album, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
end

