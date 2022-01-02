class AddSubtaskToTask < ActiveRecord::Migration[6.1]
  # def change
  #   add_reference :tasks, :subtask, foreign_key: true
  # end
  def change
    add_column :tasks, :subtask, :string
  end
end
