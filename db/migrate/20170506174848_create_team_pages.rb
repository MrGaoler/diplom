class CreateTeamPages < ActiveRecord::Migration[5.0]
  def change
    create_table :team_pages do |t|
      t.text :description
      t.timestamps
    end
  end
end
