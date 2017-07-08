class Comment < ApplicationRecord
    belongs_to  :spot , optional: true
end
