json.array!(@train_locomotives) do |train_locomotive|
  json.extract! train_locomotive, :id, :operator_id, :locomotive_class_name, :locomotive_class_number, :make_id, :locomotive_type_id, :box_number, :owner_id, :price, :decoder_id, :decoder_address
  json.url train_locomotive_url(train_locomotive, format: :json)
end
