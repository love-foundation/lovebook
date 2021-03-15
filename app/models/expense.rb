class Expense < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true, numericality: true
end
