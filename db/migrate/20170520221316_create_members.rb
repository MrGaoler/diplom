class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :position
      t.string :full_name
      t.json :social_links
      t.references :memberable, polymorphic: true

      t.timestamps
    end
  end
end
