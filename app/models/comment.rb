# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  title       :string
#  description :text
#  image       :string
#  spot_id     :integer
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#

class Comment < ApplicationRecord
    belongs_to  :spot , optional: true
    belongs_to  :user , optional: true
end
