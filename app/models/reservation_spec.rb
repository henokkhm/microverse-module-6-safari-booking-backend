# spec/models/reservation_spec.rb
require './spec/rails_helper.rb'

RSpec.describe Reservation, type: :model do
  describe 'associations' do
    it { should belong_to(:user) }
    it { should belong_to(:safari) }
  end

  describe 'validations' do
    it { should validate_presence_of(:bookingDate) }
    it { should validate_presence_of(:numberofPersons) }
  end
end
