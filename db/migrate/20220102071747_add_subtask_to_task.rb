class AddSubtaskToTask < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :subtask, :string
  end
end
