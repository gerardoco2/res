json.extract! owner, :id, :nombre, :apellido, :fecha_nac, :email, :telefono, :sexo, :created_at, :updated_at
json.url owner_url(owner, format: :json)
