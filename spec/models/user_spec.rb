require 'rails_helper'

RSpec.describe User, type: :model do
  it { is_expected.to validate_presence_of(:email) }

  it { is_expected.to belong_to(:hub).optional }

  it { is_expected.to have_many :expenses }
end
