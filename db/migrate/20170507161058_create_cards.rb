class CreateCards < ActiveRecord::Migration[5.0]
  def change
    create_table :cards do |t|
      t.integer :card_type
      t.string :name
      t.text :description
      t.string :schedule

      t.timestamps
    end
  end
end
