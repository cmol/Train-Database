json.array!(@operators) do |operator|
  json.extract! operator, :id, :name, :full_name
  json.url operator_url(operator, format: :json)
end
