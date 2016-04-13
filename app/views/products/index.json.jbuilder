json.array!(@products) do |product|
  json.extract! product, :id, :name, :price, :farm_id, :bio, :quantite
  json.url product_url(product, format: :json)
end
