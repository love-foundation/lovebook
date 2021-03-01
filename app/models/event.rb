class Event < ApplicationRecord
    validates :name, presence: true
    validates :location, presence: true

    belongs_to :hub
end
