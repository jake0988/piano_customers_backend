class PianoSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :serial, :make, :model, :age, :private_technical_notes, :image_url, :user, :appointments
end
