json.array!(@car_types) do |car_type|
  json.extract! car_type, :id, :name
  json.url car_type_url(car_type, format: :json)
end
