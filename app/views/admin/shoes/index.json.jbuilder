json.array!(@shoes) do |shoe|
  json.extract! shoe, :id
  json.url admin_shoe_url(shoe, format: :json)
end
