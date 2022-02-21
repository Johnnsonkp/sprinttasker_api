class AddRewardToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :reward, :string
  end
end
