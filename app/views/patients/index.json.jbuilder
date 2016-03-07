json.array!(@patients) do |patient|
  json.extract! patient, :id, :first_name, :middle_initial, :last_name, :date_of_birth, :street, :city, :state, :zip, :cellphone_number, :home_number, :sex, :patient_type
  json.url patient_url(patient, format: :json)
end
