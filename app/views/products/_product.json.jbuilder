json.extract! product, :id, :name, :description, :price, :aneka_minuman, :aneka_sayuran, :aneka_ayam, :lainnya, :available, :catering, :featured, :created_at, :updated_at
json.url product_url(product, format: :json)
