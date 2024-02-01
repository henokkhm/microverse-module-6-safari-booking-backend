require 'rails_helper'
require 'support/factory_bot'

RSpec.describe User, type: :model do
  describe 'enums' do
    it { should define_enum_for(:role).with_values(%i[user admin]) }
  end

  describe 'associations' do
    it { should have_many(:reservations).dependent(:destroy) }
  end

  describe 'after_initialize' do
    it 'sets default role to user' do
      user = User.new
      expect(user.role).to eq('user')
    end
  end
end
