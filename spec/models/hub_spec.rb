require 'rails_helper'

RSpec.describe Hub, type: :model do
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:country) }

  it { is_expected.to have_many :users }
end
