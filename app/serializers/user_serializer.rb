class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :number_of_pianos, :customer_notes, :technician_notes, :address1, :address2, :password_digest, :phone_number, :appointments
end
