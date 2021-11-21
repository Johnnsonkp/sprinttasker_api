class Task < ApplicationRecord
    # has_one :user
    has_many :subtask
    # belongs_to :user, :class_name => 'User', :foreign_key => 'task_id'
    belongs_to :user, :class_name => 'User', :foreign_key => 'user_id'
    has_one :user_task
    
end
