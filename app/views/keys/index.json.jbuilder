json.array!(@keys) do |key|
  json.extract! key, :shop_id, :identifier
  json.url key_url(key, format: :json)
end
