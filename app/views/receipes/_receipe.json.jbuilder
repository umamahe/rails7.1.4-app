json.extract! receipe, :id, :title, :body, :created_at, :updated_at
json.url receipe_url(receipe, format: :json)
