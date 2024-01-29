# app/models/user.rb
class User < ApplicationRecord
  enum role: %i[user admin]
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_no, presence: true, uniqueness: true
  has_many :reservations, dependent: :destroy

  after_initialize :set_default_role, if: :new_record?

  def set_default_role
    self.role ||= :user
  end
end
