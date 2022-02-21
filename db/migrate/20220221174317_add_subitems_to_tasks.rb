class AddSubitemsToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :subitems, :array
  end
end
