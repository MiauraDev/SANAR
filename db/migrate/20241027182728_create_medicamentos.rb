class CreateMedicamentos < ActiveRecord::Migration[7.2]
  def change
    create_table :medicamentos do |t|
      t.string :nombre
      t.string :dosis
      t.string :frecuencia
      t.string :duracion
      t.references :tratamiento, null: false, foreign_key: true
      t.string :proveedor
      t.string :efectos_secundarios

      t.timestamps
    end
  end
end
