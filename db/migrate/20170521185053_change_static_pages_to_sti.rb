class ChangeStaticPagesToSti < ActiveRecord::Migration[5.0]
  def up
    drop_table :team_pages
    drop_table :about_pages
    drop_table :contacts_pages

    create_table :cms_static_pages do |t|
      t.string :type
      t.json :data

      t.timestamps
    end
  end

  def down
    create_table :team_pages do |t|
      t.text :description
      t.timestamps
    end

    create_table :about_pages do |t|
      t.text :description
      t.timestamps
    end

    create_table :contacts_pages do |t|
      t.integer :phone
      t.string :email
      t.string :location
      t.string :work_time
      t.timestamps
    end
  end
end
