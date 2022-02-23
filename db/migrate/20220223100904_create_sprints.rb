class CreateSprints < ActiveRecord::Migration[6.1]
  def change
    create_table :sprints do |t|
      t.string :name
      t.text :objective
      t.text :notes, array: true, default: []
      t.date :start_date
      t.date :end_date
      t.boolean :stand_up, array: true, default: []
      t.integer :days
      t.text :stand_up_notes, array: true, default: []
      t.boolean :completed
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
