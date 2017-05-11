class CreateContactsPages < ActiveRecord::Migration[5.0]
  def change
    create_table :contacts_pages do |t|
      t.integer :phone
      t.string :email
      t.string :location
      t.string :work_time
      t.timestamps
    end
  end
end
