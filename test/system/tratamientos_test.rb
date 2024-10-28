require "application_system_test_case"

class TratamientosTest < ApplicationSystemTestCase
  setup do
    @tratamiento = tratamientos(:one)
  end

  test "visiting the index" do
    visit tratamientos_url
    assert_selector "h1", text: "Tratamientos"
  end

  test "should create tratamiento" do
    visit tratamientos_url
    click_on "New tratamiento"

    fill_in "Descripcion", with: @tratamiento.descripcion
    fill_in "Diagnostico", with: @tratamiento.diagnostico_id
    fill_in "Duracion", with: @tratamiento.duracion
    fill_in "Estado", with: @tratamiento.estado
    fill_in "Frecuencia administracion", with: @tratamiento.frecuencia_administracion
    fill_in "Medico", with: @tratamiento.medico_id
    fill_in "Nombre", with: @tratamiento.nombre
    click_on "Create Tratamiento"

    assert_text "Tratamiento was successfully created"
    click_on "Back"
  end

  test "should update Tratamiento" do
    visit tratamiento_url(@tratamiento)
    click_on "Edit this tratamiento", match: :first

    fill_in "Descripcion", with: @tratamiento.descripcion
    fill_in "Diagnostico", with: @tratamiento.diagnostico_id
    fill_in "Duracion", with: @tratamiento.duracion
    fill_in "Estado", with: @tratamiento.estado
    fill_in "Frecuencia administracion", with: @tratamiento.frecuencia_administracion
    fill_in "Medico", with: @tratamiento.medico_id
    fill_in "Nombre", with: @tratamiento.nombre
    click_on "Update Tratamiento"

    assert_text "Tratamiento was successfully updated"
    click_on "Back"
  end

  test "should destroy Tratamiento" do
    visit tratamiento_url(@tratamiento)
    click_on "Destroy this tratamiento", match: :first

    assert_text "Tratamiento was successfully destroyed"
  end
end
