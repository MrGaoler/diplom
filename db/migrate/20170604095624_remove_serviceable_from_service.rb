class RemoveServiceableFromService < ActiveRecord::Migration[5.0]
  def change
    change_table :services do |t|
      t.remove_references :serviceable, polymorphic: true
    end
  end
end
