class AddTimerToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :timer, :string
  end
end
