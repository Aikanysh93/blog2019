json.extract! post, :id, :author, :body, :title, :page_views_count, :created_at, :updated_at
json.url post_url(post, format: :json)
