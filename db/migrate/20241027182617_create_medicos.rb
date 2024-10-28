class CreateMedicos < ActiveRecord::Migration[7.2]
  def change
    create_table :medicos do |t|
      t.string :nombre
      t.string :apellido
      t.string :especialidad
      t.string :telefono
      t.string :email
      t.string :licencia
      t.integer :años_experiencia

      t.timestamps
    end
  end
end
