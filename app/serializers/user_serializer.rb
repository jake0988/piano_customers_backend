class UserSerializer
  include FastJsonapi::ObjectSerializer
  attributes :first_name, :last_name, :email, :number_of_pianos, :technician_notes, :phone_number, :address, :pianos
end
