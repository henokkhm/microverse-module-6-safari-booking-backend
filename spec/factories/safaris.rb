# spec/factories/safaris.rb

FactoryBot.define do
  factory :safari do
    name { 'Test Safari' }
    location { 'Test Location' }
    price { 100.0 }
    description { 'A safari test' }
    img { 'test_image.jpg' }

    # Other attributes as needed
  end
end
