class Reaction < ApplicationRecord
    belongs_to :reactable, polymorphic: true
    belongs_to :account
    

    # validates :name_react, presence: true
end
