class User < ApplicationRecord
  has_many :pianos
  has_many :appointments
end
