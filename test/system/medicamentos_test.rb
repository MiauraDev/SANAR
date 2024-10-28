require "application_system_test_case"

class MedicamentosTest < ApplicationSystemTestCase
  setup do
    @medicamento = medicamentos(:one)
  end

  test "visiting the index" do
    visit medicamentos_url
    assert_selector "h1", text: "Medicamentos"
  end

  test "should create medicamento" do
    visit medicamentos_url
    click_on "New medicamento"

    fill_in "Dosis", with: @medicamento.dosis
    fill_in "Duracion", with: @medicamento.duracion
    fill_in "Efectos secundarios", with: @medicamento.efectos_secundarios
    fill_in "Frecuencia", with: @medicamento.frecuencia
    fill_in "Nombre", with: @medicamento.nombre
    fill_in "Proveedor", with: @medicamento.proveedor
    fill_in "Tratamiento", with: @medicamento.tratamiento_id
    click_on "Create Medicamento"

    assert_text "Medicamento was successfully created"
    click_on "Back"
  end

  test "should update Medicamento" do
    visit medicamento_url(@medicamento)
    click_on "Edit this medicamento", match: :first

    fill_in "Dosis", with: @medicamento.dosis
    fill_in "Duracion", with: @medicamento.duracion
    fill_in "Efectos secundarios", with: @medicamento.efectos_secundarios
    fill_in "Frecuencia", with: @medicamento.frecuencia
    fill_in "Nombre", with: @medicamento.nombre
    fill_in "Proveedor", with: @medicamento.proveedor
    fill_in "Tratamiento", with: @medicamento.tratamiento_id
    click_on "Update Medicamento"

    assert_text "Medicamento was successfully updated"
    click_on "Back"
  end

  test "should destroy Medicamento" do
    visit medicamento_url(@medicamento)
    click_on "Destroy this medicamento", match: :first

    assert_text "Medicamento was successfully destroyed"
  end
end
