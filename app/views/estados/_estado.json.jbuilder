json.extract! estado, :id, :nombre, :zip, :status, :created_at, :updated_at
json.url estado_url(estado, format: :json)
