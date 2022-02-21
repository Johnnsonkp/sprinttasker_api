class AddSubitemsToTasks < ActiveRecord::Migration[6.1]
  def change
    add_column :tasks, :subitems, :string, array: true, default: []
  end
end
