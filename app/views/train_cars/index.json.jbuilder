json.array!(@train_cars) do |train_car|
  json.extract! train_car, :id, :operator_id, :car_class_name, :car_class_number, :make_id, :car_type_id, :box_number, :owner_id, :price
  json.url train_car_url(train_car, format: :json)
end
