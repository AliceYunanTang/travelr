# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email           :string
#  name            :string
#  password_digest :string
#  is_admin        :boolean
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image           :string
#

class User < ApplicationRecord
  has_secure_password
end
