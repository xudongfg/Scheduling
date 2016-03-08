json.array!(@appointments) do |appointment|
  json.extract! appointment, :id, :patient_id, :provider_id, :appointment_date, :time_from, :time_to, :appointment_type, :appointment_reason, :request_met, :comments
  json.url appointment_url(appointment, format: :json)
end
