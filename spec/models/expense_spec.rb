require 'rails_helper'

RSpec.describe Expense, type: :model do
  it { is_expected.to validate_presence_of(:name) }

  it { is_expected.to validate_presence_of(:amount) }

  it { is_expected.to validate_numericality_of(:amount) }

  it { is_expected.to belong_to(:user) }
end
