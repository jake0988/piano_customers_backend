class User < ApplicationRecord

  has_many :pianos
  # before_save :validate_not_empty
  # validates uniqueness: true

  # protected

  # def validate_not_empty
  #   # byebug
  #   arr = %w(self.first_name self.last_name self.email self.number_of_pianos self.technician_notes)
  #   arr.each do |e|
  #     if !(e.empty?)
  #       return true
  #     end
  #   end
  #       render json: { message: "Must fill in at least one box." }
  #     return false
  # end

end
