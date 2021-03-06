class Hub < ApplicationRecord
  validates :city, presence: true
  validates :country, presence: true

  has_many :users
  has_many :events
end
