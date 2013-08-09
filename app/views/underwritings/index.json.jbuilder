json.array!(@underwritings) do |underwriting|
  json.extract! underwriting, :shop_id, :status
  json.url underwriting_url(underwriting, format: :json)
end
