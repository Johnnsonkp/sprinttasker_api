class Sprint < ApplicationRecord
  # belongs_to :tasks
  belongs_to :user, default: -> { Current.user }, :foreign_key => 'user_id'
end
