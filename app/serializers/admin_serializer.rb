class AdminSerializer
  include FastJsonapi::ObjectSerializer
  attributes :username, :email
  has_many :users
end