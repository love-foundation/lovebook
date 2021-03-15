class AddScaleToEventsAmountColumn < ActiveRecord::Migration[6.1]
  def change
    change_column :expenses, :amount, :decimal, precision: 15, scale: 2
  end
end
