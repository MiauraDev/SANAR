class CreateCita < ActiveRecord::Migration[7.2]
  def change
    create_table :cita do |t|
      t.datetime :fecha
      t.string :motivo
      t.references :paciente, null: false, foreign_key: true
      t.references :medico, null: false, foreign_key: true
      t.string :estado
      t.text :observaciones
      t.string :sala

      t.timestamps
    end
  end
end
