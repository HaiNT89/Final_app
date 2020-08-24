class Album < ApplicationRecord
    belongs_to :user, counter_cache: :count_album
    has_many :photos, dependent: :destroy
    has_many :reactions, as: :reactable, dependent: :destroy


    # validates :title, length: {minimum: 4}, presence: true
    # validates :title, :description, :source_album, :mode, presence: true
    # validates :title, length: {minimum:5, maximum:140}
    # validates :description, length: {minimum:10, maximum:300}
    # validates :mode, acceptance: { accept: ['private', 'public'] }
    # validates :source_album, allow_blank: true, format: { with: %r{.(gif|jpg|png)\Z}i, message: 'must be a URL for GIF, JPG or PNG image.' }
end

