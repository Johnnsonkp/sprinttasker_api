class Subtask < ApplicationRecord
  # belongs_to :task

  # belongs_to :task, :class_name => 'Task', :foreign_key => 'task_id'
  belongs_to :task, :foreign_key => 'task_id'
end
