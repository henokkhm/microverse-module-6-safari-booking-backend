# spec/factories/users.rb

FactoryBot.define do
    factory :user do
      first_name { 'John' }
      last_name  { 'Doe' }
      phone_no   { '1234567890' }
      email      { 'john.doe@example.com' }
      password   { 'password' }
      role       { :user }
    end
  end
  