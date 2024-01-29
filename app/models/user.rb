class User < ApplicationRecord
  enum role: %i[user admin]
  after_initialize :set_default_role, if: :new_record?
  include Devise::JWT::RevocationStrategies::JTIMatcher
  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :phone_no, presence: true, uniqueness: true
  validates :username, presence: true, uniqueness: true
  devise :database_authenticatable, :registerable, :validatable,
         :jwt_authenticatable, jwt_revocation_strategy: self
  def set_default_role
    self.role ||= :user
  end
  has_many :reservations, dependent: :destroy
end
