json.extract! post, :id, :title, :body, :created_at, :updated_at
json.user_name post.user.name
# json.url post_url(post, format: :json)