json.extract! order, :id, :service_id, :user_id, :priceAtPurchase, :receipt_id, :created_at, :updated_at
json.url order_url(order, format: :json)
