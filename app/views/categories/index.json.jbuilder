json.array!(@categories) do |category|
  json.extract! category, :name, :layout
  json.url category_url(category, format: :json)
end
