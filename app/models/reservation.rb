class Reservation < ApplicationRecord
  belongs_to :user
  belongs_to :safari
  validates :bookingDate, presence: true
  validates :numberofPersons, presence: true
end
