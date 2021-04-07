class Admin < ApplicationRecord
  has_secure_password
  has_many :users
  has_many :pianos, through: :users
  has_many :appointments

  validates :username, uniqueness: { case_sensitive: false }
end
