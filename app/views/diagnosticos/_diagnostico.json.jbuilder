json.extract! diagnostico, :id, :descripcion, :fecha, :paciente_id, :medico_id, :gravedad, :recomendaciones, :tipo_diagnostico, :created_at, :updated_at
json.url diagnostico_url(diagnostico, format: :json)
