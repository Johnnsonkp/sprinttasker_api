class Task < ApplicationRecord
    # has_one :user
    has_many :subtasks
    # belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
    belongs_to :user, default: -> { Current.user }, :foreign_key => 'user_id'
    # belongs_to :user
    has_one :user_task
    
end
