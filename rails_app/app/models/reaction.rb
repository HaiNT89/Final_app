class Reaction < ApplicationRecord
    belongs_to :reactable, polymorphic: true
    
end