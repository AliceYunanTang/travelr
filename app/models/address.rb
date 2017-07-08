class Address < ApplicationRecord
    belongs_to :postcode, optional: true
    belongs_to :spot  , optional: true
end
