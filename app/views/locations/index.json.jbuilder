json.array!(@locations) do |location|
  json.extract! location, :id, :locationName, :notes, :latitude, :longitude
  json.url location_url(location, format: :json)
end
