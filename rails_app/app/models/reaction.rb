class Reaction < ApplicationRecord
    belongs_to :reactable, polymorphic: true 
    belongs_to :user
    # validates :name_react, presence: true
end
