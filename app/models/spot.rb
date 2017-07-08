class Spot < ApplicationRecord
    has_one :address
    has_many :comments 
end
