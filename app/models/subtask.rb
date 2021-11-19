class Subtask < ApplicationRecord
  # belongs_to :task

  belongs_to :task, :class_name => 'Task', :foreign_key => 'subtask_id'
end
