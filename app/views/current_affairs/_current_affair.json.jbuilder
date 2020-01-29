json.extract! current_affair, :id, :name, :post_on, :created_at, :updated_at
json.url current_affair_url(current_affair, format: :json)
