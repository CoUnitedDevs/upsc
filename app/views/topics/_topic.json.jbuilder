json.extract! topic, :id, :name, :topics_covered, :created_by, :body, :current_affairs_id, :category_id, :created_at, :updated_at
json.url topic_url(topic, format: :json)
