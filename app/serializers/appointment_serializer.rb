class AppointmentSerializer
  include FastJsonapi::ObjectSerializer
  attributes :user_id, :date, :price, :work_performed, :initial_a4_frequency, :piano_id, :piano
end
