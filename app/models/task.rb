class Task < ApplicationRecord
    # has_one :user
    has_many :subtask
    belongs_to :user, :class_name => 'User', :foreign_key => 'user_id', default: -> { Current.user }
    has_one :user_task
    
end
