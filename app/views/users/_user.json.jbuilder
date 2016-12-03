json.extract! user, :id, :name, :email, :role, :commune_id_id, :address, :code, :phone, :password, :created_at, :updated_at
json.url user_url(user, format: :json)