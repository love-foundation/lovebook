class Expense < ApplicationRecord
  validates :name, presence: true
  validates :amount, presence: true, numericality: true

  belongs_to :user
  belongs_to :event
end
