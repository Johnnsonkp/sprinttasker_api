class Note < ApplicationRecord
  # belongs_to :user
  belongs_to :user, default: -> { Current.user }, :foreign_key => 'user_id'
end
