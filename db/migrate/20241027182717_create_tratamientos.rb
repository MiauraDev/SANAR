class CreateTratamientos < ActiveRecord::Migration[7.2]
  def change
    create_table :tratamientos do |t|
      t.string :nombre
      t.text :descripcion
      t.string :duracion
      t.references :diagnostico, null: false, foreign_key: true
      t.references :medico, null: false, foreign_key: true
      t.string :estado
      t.string :frecuencia_administracion

      t.timestamps
    end
  end
end
