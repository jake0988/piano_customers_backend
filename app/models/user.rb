class User < ApplicationRecord

  has_many :pianos
  belongs_to :admin
  has_many :appointments
  
  before_save :validate_not_empty
  after_create :set_default_admin

  protected

  def validate_not_empty
  #   byebug
    arr = %w(self.first_name self.last_name self.email self.number_of_pianos self.technician_notes)
    arr.each do |e|
      if !(e.empty?)
        return true
      end
    end
        render json: { message: "Must fill in at least one box." }
      return false
  end

  def set_default_admin
    self.admin_id = Admin.first.id if order.nil?
  end
end
