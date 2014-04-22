json.array!(@decoders) do |decoder|
  json.extract! decoder, :id, :name
  json.url decoder_url(decoder, format: :json)
end
