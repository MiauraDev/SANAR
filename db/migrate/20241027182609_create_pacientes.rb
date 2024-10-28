class CreatePacientes < ActiveRecord::Migration[7.2]
  def change
    create_table :pacientes do |t|
      t.string :nombre
      t.string :apellido
      t.date :fecha_nacimiento
      t.string :genero
      t.string :telefono
      t.string :direccion
      t.string :tipo_sangre

      t.timestamps
    end
  end
end
