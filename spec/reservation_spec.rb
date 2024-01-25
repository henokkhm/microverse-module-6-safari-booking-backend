# spec/models/reservation_spec.rb

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:safari) { FactoryBot.create(:safari) }

  it 'is not valid without a user association' do
    reservation = FactoryBot.build(:reservation, user: nil, safari:)
    expect(reservation).not_to be_valid
  end
end
