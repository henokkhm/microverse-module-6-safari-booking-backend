# spec/factories/users.rb

FactoryBot.define do
  factory :user do
    email { 'john.doe@example.com' }
    password { 'password123' }
    first_name { 'John' }
    last_name { 'Doe' }
    phone_no { '1234567890' }
    role { 'user' }
  end
end
