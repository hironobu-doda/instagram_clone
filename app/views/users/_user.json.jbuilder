json.extract! user, :id, :name, :mail, :password_digest, :profile_image, :profile_content, :created_at, :updated_at
json.url user_url(user, format: :json)
