class AddEventToExpenses < ActiveRecord::Migration[6.1]
  def change
    add_reference :expenses, :event, null: false, foreign_key: true
  end
end
