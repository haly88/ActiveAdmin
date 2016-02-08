json.array!(@products_types) do |products_type|
  json.extract! products_type, :id, :name, :code
  json.url products_type_url(products_type, format: :json)
end
