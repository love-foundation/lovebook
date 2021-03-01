class Event < ApplicationRecord
    validates :name, presence: true
    validates :location, presence: true
    validates :date, presence: true

    belongs_to :hub
end
