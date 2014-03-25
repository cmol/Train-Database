json.array!(@locomotive_types) do |locomotive_type|
  json.extract! locomotive_type, :id, :name
  json.url locomotive_type_url(locomotive_type, format: :json)
end
