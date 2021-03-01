class AddUserToHubs < ActiveRecord::Migration[6.1]
  def change
    add_reference :users, :hub, null: true, foreign_key: true
  end
end
