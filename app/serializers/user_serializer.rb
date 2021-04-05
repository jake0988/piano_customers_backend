class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :number_of_pianos, :technician_notes, :password_digest, :phone_number, :appointments, :address, :pianos
end
