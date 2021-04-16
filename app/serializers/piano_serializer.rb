class PianoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :serial, :make, :model, :age, :image_url, :user
end
