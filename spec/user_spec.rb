# spec/factories/users.rb
FactoryBot.define do
  factory :user do
    sequence(:email) { |n| "user#{n}@example.com" }
    password { 'password' }
    first_name { 'John' }
    last_name { 'Doe' }
    phone_no { '1234567890' }
    role { :user }

    after(:build) do |user|
      user.class.skip_callback(:create, :before, :set_default_role)
    end

    after(:create) do |user|
      user.class.set_callback(:create, :before, :set_default_role)
    end
  end
end
