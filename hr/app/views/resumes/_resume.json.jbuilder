json.extract! resume, :id, :name, :avatar, :role, :location, :email, :phone, :created_at, :updated_at
json.url resume_url(resume, format: :json)
