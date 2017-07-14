# == Schema Information
#
# Table name: addresses
#
#  id           :integer          not null, primary key
#  address_line :string
#  suburb       :string
#  state        :string
#  longitude    :decimal(, )
#  latitude     :decimal(, )
#  postcode_id  :integer
#  spot_id      :integer
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#

class Address < ApplicationRecord
    belongs_to :postcode, optional: true
    belongs_to :spot  , optional: true

    geocoded_by :full_street_address
    after_validation :geocode

    def full_street_address
      address_line + ", " + suburb + ", " + state + ", " + postcode.postcode
    end

end
