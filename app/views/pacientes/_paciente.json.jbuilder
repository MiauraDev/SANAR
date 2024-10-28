json.extract! paciente, :id, :nombre, :apellido, :fecha_nacimiento, :genero, :telefono, :direccion, :tipo_sangre, :created_at, :updated_at
json.url paciente_url(paciente, format: :json)
