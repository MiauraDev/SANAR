require "application_system_test_case"

class DiagnosticosTest < ApplicationSystemTestCase
  setup do
    @diagnostico = diagnosticos(:one)
  end

  test "visiting the index" do
    visit diagnosticos_url
    assert_selector "h1", text: "Diagnosticos"
  end

  test "should create diagnostico" do
    visit diagnosticos_url
    click_on "New diagnostico"

    fill_in "Descripcion", with: @diagnostico.descripcion
    fill_in "Fecha", with: @diagnostico.fecha
    fill_in "Gravedad", with: @diagnostico.gravedad
    fill_in "Medico", with: @diagnostico.medico_id
    fill_in "Paciente", with: @diagnostico.paciente_id
    fill_in "Recomendaciones", with: @diagnostico.recomendaciones
    fill_in "Tipo diagnostico", with: @diagnostico.tipo_diagnostico
    click_on "Create Diagnostico"

    assert_text "Diagnostico was successfully created"
    click_on "Back"
  end

  test "should update Diagnostico" do
    visit diagnostico_url(@diagnostico)
    click_on "Edit this diagnostico", match: :first

    fill_in "Descripcion", with: @diagnostico.descripcion
    fill_in "Fecha", with: @diagnostico.fecha.to_s
    fill_in "Gravedad", with: @diagnostico.gravedad
    fill_in "Medico", with: @diagnostico.medico_id
    fill_in "Paciente", with: @diagnostico.paciente_id
    fill_in "Recomendaciones", with: @diagnostico.recomendaciones
    fill_in "Tipo diagnostico", with: @diagnostico.tipo_diagnostico
    click_on "Update Diagnostico"

    assert_text "Diagnostico was successfully updated"
    click_on "Back"
  end

  test "should destroy Diagnostico" do
    visit diagnostico_url(@diagnostico)
    click_on "Destroy this diagnostico", match: :first

    assert_text "Diagnostico was successfully destroyed"
  end
end
