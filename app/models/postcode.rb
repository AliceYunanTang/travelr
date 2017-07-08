# == Schema Information
#
# Table name: postcodes
#
#  id         :integer          not null, primary key
#  postcode   :string
#  country    :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Postcode < ApplicationRecord
    has_many    :addresses
end
