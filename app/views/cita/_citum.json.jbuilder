json.extract! citum, :id, :fecha, :motivo, :paciente_id, :medico_id, :estado, :observaciones, :sala, :created_at, :updated_at
json.url citum_url(citum, format: :json)
