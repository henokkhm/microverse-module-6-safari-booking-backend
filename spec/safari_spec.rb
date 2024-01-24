# spec/models/safari_spec.rb

require 'rails_helper'

RSpec.describe Safari, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:name) }
    it { should validate_presence_of(:location) }
    it { should validate_presence_of(:price) }
    it { should validate_numericality_of(:price).is_greater_than(0).is_less_than(1_000_000) }
    it { should validate_presence_of(:description) }
    it { should validate_length_of(:description).is_at_least(3) }
    it { should validate_presence_of(:img) }
  end

  describe 'associations' do
    it { should have_many(:reservations).dependent(:destroy) }
  end
end
