# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# This file is the source Rails uses to define your schema when running `bin/rails
# db:schema:load`. When creating a new database, `bin/rails db:schema:load` tends to
# be faster and is potentially less error prone than running all of your
# migrations from scratch. Old migrations may fail to apply correctly if those
# migrations use external dependencies or application code.
#
# It's strongly recommended that you check this file into your version control system.

ActiveRecord::Schema[7.2].define(version: 2024_10_27_223606) do
  # These are extensions that must be enabled in order to support this database
  enable_extension "plpgsql"

  create_table "admins", force: :cascade do |t|
    t.string "username"
    t.string "password_digest"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "cita", force: :cascade do |t|
    t.datetime "fecha"
    t.string "motivo"
    t.bigint "paciente_id", null: false
    t.bigint "medico_id", null: false
    t.string "estado"
    t.text "observaciones"
    t.string "sala"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medico_id"], name: "index_cita_on_medico_id"
    t.index ["paciente_id"], name: "index_cita_on_paciente_id"
  end

  create_table "diagnosticos", force: :cascade do |t|
    t.text "descripcion"
    t.datetime "fecha"
    t.bigint "paciente_id", null: false
    t.bigint "medico_id", null: false
    t.string "gravedad"
    t.text "recomendaciones"
    t.string "tipo_diagnostico"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["medico_id"], name: "index_diagnosticos_on_medico_id"
    t.index ["paciente_id"], name: "index_diagnosticos_on_paciente_id"
  end

  create_table "medicamentos", force: :cascade do |t|
    t.string "nombre"
    t.string "dosis"
    t.string "frecuencia"
    t.string "duracion"
    t.bigint "tratamiento_id", null: false
    t.string "proveedor"
    t.string "efectos_secundarios"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["tratamiento_id"], name: "index_medicamentos_on_tratamiento_id"
  end

  create_table "medicos", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.string "especialidad"
    t.string "telefono"
    t.string "email"
    t.string "licencia"
    t.integer "años_experiencia"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "pacientes", force: :cascade do |t|
    t.string "nombre"
    t.string "apellido"
    t.date "fecha_nacimiento"
    t.string "genero"
    t.string "telefono"
    t.string "direccion"
    t.string "tipo_sangre"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
  end

  create_table "tratamientos", force: :cascade do |t|
    t.string "nombre"
    t.text "descripcion"
    t.string "duracion"
    t.bigint "diagnostico_id", null: false
    t.bigint "medico_id", null: false
    t.string "estado"
    t.string "frecuencia_administracion"
    t.datetime "created_at", null: false
    t.datetime "updated_at", null: false
    t.index ["diagnostico_id"], name: "index_tratamientos_on_diagnostico_id"
    t.index ["medico_id"], name: "index_tratamientos_on_medico_id"
  end

  add_foreign_key "cita", "medicos"
  add_foreign_key "cita", "pacientes"
  add_foreign_key "diagnosticos", "medicos"
  add_foreign_key "diagnosticos", "pacientes"
  add_foreign_key "medicamentos", "tratamientos"
  add_foreign_key "tratamientos", "diagnosticos"
  add_foreign_key "tratamientos", "medicos"
end
