json.array!(@providers) do |provider|
  json.extract! provider, :id, :first_name, :middle_initial, :last_name, :provider_specialty
  json.url provider_url(provider, format: :json)
end
