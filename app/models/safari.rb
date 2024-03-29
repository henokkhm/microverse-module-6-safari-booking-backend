class Safari < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  validates :location, presence: true
  validates :price, presence: true, format: { with: /\A\d+(?:\.\d{0,2})?\z/ },
                    numericality: { greater_than: 0, less_than: 1_000_000 }
  validates :description, presence: true, length: { minimum: 3 }
  validates :img, presence: true
  has_many :reservations, dependent: :destroy
  has_many :users, through: :reservations
end
