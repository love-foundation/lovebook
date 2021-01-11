# frozen_string_literal: true

class UserPersonalInformation < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :firstname, :string
    add_column :users, :lastname, :string
  end
end
