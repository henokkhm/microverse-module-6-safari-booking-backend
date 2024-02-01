# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

# Create Admin
admin = User.create!(
  email: 'admin@test.com',
  password: 'password',
  first_name: 'Henary',
  last_name: 'kh',
  phone_no: '1234567891',
  username: 'admin',
  role: "admin"
)

# Create normal user
user1 = User.create!(
  email: 'user1@test.com',
  password: 'password',
  first_name: 'Henary',
  last_name: 'kh',
  phone_no: '1234567890',
  username: 'user1'
)

user2 = User.create!(
  email: 'user2@test.com',
  password: 'password',
  first_name: 'Chalambi',
  last_name: 'kh',
  phone_no: '9876543210',
  username: 'user2'
)

# Create safaris
safari1 = Safari.create!(
  name: 'Safari A',
  location: 'Wilderness',
  description: 'An exciting safari adventure.',
  price: 100.00,
  img: 'http://127.0.0.1:3000/images/safari_a.jpg'
)

safari2 = Safari.create!(
  name: 'Safari B',
  location: 'Savannah',
  description: 'Explore the beauty of the savannah.',
  price: 150.00,
  img: 'http://127.0.0.1:3000/images/safari_b.jpg'
)

# Create reservations
Reservation.create!(
  user: user1,
  safari: safari1,
  bookingDate: '2024-02-15',
  numberofPersons: '2',
  totalAmount: 200.00
)

Reservation.create!(
  user: user1,
  safari: safari2,
  bookingDate: '2024-03-20',
  numberofPersons: '3',
  totalAmount: 450.00
)

Reservation.create!(
  user: user2,
  safari: safari1,
  bookingDate: '2024-02-15',
  numberofPersons: '4',
  totalAmount: 200.00
)

Reservation.create!(
  user: user2,
  safari: safari2,
  bookingDate: '2024-03-20',
  numberofPersons: '4',
  totalAmount: 450.00
)
