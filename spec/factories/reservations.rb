FactoryBot.define do
  factory :reservation do
    user
    safari
    bookingDate { '2024-01-01' }
    numberofPersons { 2 }
    totalAmount { 100.00 }
  end
end
