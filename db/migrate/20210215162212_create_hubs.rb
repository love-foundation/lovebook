class CreateHubs < ActiveRecord::Migration[6.1]
  def change
    create_table :hubs do |t|
      t.string :city
      t.string :country

      t.timestamps
    end
  end
end
