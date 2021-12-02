class AddSubtaskToTasks < ActiveRecord::Migration[6.1]
  def change
    add_reference :tasks, :subtask, foreign_key: true
  end
end