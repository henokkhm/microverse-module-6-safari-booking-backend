# spec/models/reservation_spec.rb

require 'rails_helper'

RSpec.describe Reservation, type: :model do
  let(:user) { FactoryBot.create(:user) }
  let(:safari) { FactoryBot.create(:safari) }

  it 'is valid with valid attributes' do
    reservation = FactoryBot.build(:reservation, user: user, safari: safari)
    expect(reservation).to be_valid
  end

  it 'is not valid without bookingDate' do
    reservation = FactoryBot.build(:reservation, user: user, safari: safari, bookingDate: nil)
    expect(reservation).not_to be_valid
  end

  it 'is not valid without numberofPersons' do
    reservation = FactoryBot.build(:reservation, user: user, safari: safari, numberofPersons: nil)
    expect(reservation).not_to be_valid
  end

  it 'is not valid without a user association' do
    reservation = FactoryBot.build(:reservation, user: nil, safari: safari)
    expect(reservation).not_to be_valid
  end

  it 'is not valid without a safari association' do
    reservation = FactoryBot.build(:reservation, user: user, safari: nil)
    expect(reservation).not_to be_valid
  end
end
