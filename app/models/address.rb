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
end
