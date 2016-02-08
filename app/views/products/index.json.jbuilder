json.array!(@products) do |product|
  json.extract! product, :id, :name, :products_type_id, :price
  json.url product_url(product, format: :json)
end
