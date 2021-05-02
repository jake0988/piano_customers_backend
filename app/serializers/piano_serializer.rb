class PianoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :serial, :make, :model, :age, :image_url, :user, :private_technical_notes
end
