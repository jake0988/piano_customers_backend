class Appointment < ApplicationRecord
  belongs_to :user
  has_many :pianos, through: :user
end
