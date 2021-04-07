class AppoinmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email, :avatar
end
