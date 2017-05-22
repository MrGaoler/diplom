class AddServiceableToServices < ActiveRecord::Migration[5.0]
  def change
    add_reference :services, :serviceable, polymorphic: true
  end
end
