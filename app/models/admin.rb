class Admin < ApplicationRecord
  has_many :users
  has_many :pianos, through: :users
  has_many :appointments
end
