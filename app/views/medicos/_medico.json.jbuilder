json.extract! medico, :id, :nombre, :apellido, :especialidad, :telefono, :email, :licencia, :años_experiencia, :created_at, :updated_at
json.url medico_url(medico, format: :json)
