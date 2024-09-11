# json.extract! product, :id, :created_at, :updated_at
# json.url product_url(product, format: :json)

json.id product.id
json.name product.name
json.price product.price
json.image_url product.image_url
json.description product.description
json.total product.total #error here?
json.supplier product.supplier
json.supplier_id product.supplier_id