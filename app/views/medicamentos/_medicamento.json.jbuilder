json.extract! medicamento, :id, :nombre, :dosis, :frecuencia, :duracion, :tratamiento_id, :proveedor, :efectos_secundarios, :created_at, :updated_at
json.url medicamento_url(medicamento, format: :json)
