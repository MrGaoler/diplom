class RemoveMemberableFromMember < ActiveRecord::Migration[5.0]
  def change
    change_table :members do |t|
      t.remove_references :memberable, polymorphic: true
    end
  end
end
