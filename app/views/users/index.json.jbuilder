json.array!(@users) do |user|
  json.extract! user, :id, :merchantID, :companyName, :phone
  json.url user_url(user, format: :json)
end
