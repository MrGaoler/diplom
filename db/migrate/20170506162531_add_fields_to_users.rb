class AddFieldsToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :username, :string
    add_column :users, :fname, :string
    add_column :users, :lname, :string
    add_column :users, :role, :integer
  end
end
