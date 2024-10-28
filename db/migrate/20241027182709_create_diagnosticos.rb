class CreateDiagnosticos < ActiveRecord::Migration[7.2]
  def change
    create_table :diagnosticos do |t|
      t.text :descripcion
      t.datetime :fecha
      t.references :paciente, null: false, foreign_key: true
      t.references :medico, null: false, foreign_key: true
      t.string :gravedad
      t.text :recomendaciones
      t.string :tipo_diagnostico

      t.timestamps
    end
  end
end
