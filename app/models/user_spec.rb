# spec/models/user_spec.rb
require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'validations' do
    it { should validate_presence_of(:first_name) }
    it { should validate_presence_of(:last_name) }
    it { should validate_presence_of(:phone_no) }
    it { should validate_uniqueness_of(:phone_no) }
  end

  describe 'associations' do
    it { should have_many(:reservations).dependent(:destroy) }
  end

  describe 'enums' do
    it { should define_enum_for(:role).with_values(%i[user admin]) }
  end

  describe 'callbacks' do
    describe 'after_initialize' do
      it 'sets the default role to :user' do
        user = User.new
        expect(user.role).to eq('user')
      end

      it 'does not change the role if it is already set' do
        admin_user = User.new(role: :admin)
        expect(admin_user.role).to eq('admin')
      end
    end
  end

  describe 'devise' do
    it { should validate_presence_of(:password).on(:create) }
    it { should validate_confirmation_of(:password) }
    it { should validate_length_of(:password).is_at_least(6) }

    it { should validate_presence_of(:email).on(:create) }
    it { should validate_uniqueness_of(:email).case_insensitive }
    it { should allow_value('user@example.com').for(:email) }
    it { should_not allow_value('invalid-email').for(:email) }

    it { should have_db_index(:email).unique(true) }

    it { should have_secure_password }

    it { should respond_to(:jwt_payload) }
    it { should respond_to(:jwt_subject) }
  end
end
