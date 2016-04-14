json.array!(@farms) do |farm|
  json.extract! farm, :id, :name, :address, :zipcode, :city, :description
  json.url farm_url(farm, format: :json)
end
