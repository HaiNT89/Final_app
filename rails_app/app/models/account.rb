class Account < ApplicationRecord
    has_many :photos, dependent: :destroy
    has_many :albums, dependent: :destroy
    has_many :reactions, dependent: :destroy
    
    validates :first_name,:last_name,:email,:password, presence: true
    validates :first_name,:last_name, length: {minimum:1, maximum:25}
    validates :email,  length: {minimum:5, maximum:255}, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }
    validates :password, length: {minimum:8, maximum:64}, confirmation: true
    
    
end
