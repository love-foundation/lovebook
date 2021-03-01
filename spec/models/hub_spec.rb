require 'rails_helper'

RSpec.describe Hub, type: :model do
  it { is_expected.to validate_presence_of(:city) }
  it { is_expected.to validate_presence_of(:country) }
end
