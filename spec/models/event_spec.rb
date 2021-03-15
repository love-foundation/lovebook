require 'rails_helper'

RSpec.describe Event, type: :model do
  it { is_expected.to validate_presence_of(:name) }
  it { is_expected.to validate_presence_of(:location) }
  it { is_expected.to validate_presence_of(:date) }

  it { is_expected.to belong_to(:hub) }

  it { is_expected.to have_many :expenses }
end
