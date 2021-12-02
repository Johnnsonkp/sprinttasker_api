class CreateSubtasks < ActiveRecord::Migration[6.1]
  def change
    create_table :subtasks do |t|
      t.string :name
      t.text :description
      t.references :task, null: false, foreign_key: true
      

      t.timestamps
    end
  end
end
