class User < ApplicationRecord

  has_many :pianos
  has_many :appointments
  
  validate :not_empty?

  protected

  def not_empty?
    byebug
  end

end
