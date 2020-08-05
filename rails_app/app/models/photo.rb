class Photo < ApplicationRecord
    belongs_to :account
    has_many :reactions, as: :reactable, dependent: :destroy

    validates :title_photo, :description_photo, :source_photo, :mode_photo, presence: true
    validates :title_photo, length: {minimum:5, maximum:140}
    validates :description_photo, length: {minimum:10, maximum:300}
    validates :mode_photo, acceptance: { accept: ['private', 'public'] }
    validates :source_photo, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
end
