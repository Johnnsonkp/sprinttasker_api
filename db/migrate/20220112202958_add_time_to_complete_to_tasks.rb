class AddTimeToCompleteToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :time_to_complete, :string
  end
end
