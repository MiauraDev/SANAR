require "test_helper"

class DiagnosticosControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diagnostico = diagnosticos(:one)
  end

  test "should get index" do
    get diagnosticos_url
    assert_response :success
  end

  test "should get new" do
    get new_diagnostico_url
    assert_response :success
  end

  test "should create diagnostico" do
    assert_difference("Diagnostico.count") do
      post diagnosticos_url, params: { diagnostico: { descripcion: @diagnostico.descripcion, fecha: @diagnostico.fecha, gravedad: @diagnostico.gravedad, medico_id: @diagnostico.medico_id, paciente_id: @diagnostico.paciente_id, recomendaciones: @diagnostico.recomendaciones, tipo_diagnostico: @diagnostico.tipo_diagnostico } }
    end

    assert_redirected_to diagnostico_url(Diagnostico.last)
  end

  test "should show diagnostico" do
    get diagnostico_url(@diagnostico)
    assert_response :success
  end

  test "should get edit" do
    get edit_diagnostico_url(@diagnostico)
    assert_response :success
  end

  test "should update diagnostico" do
    patch diagnostico_url(@diagnostico), params: { diagnostico: { descripcion: @diagnostico.descripcion, fecha: @diagnostico.fecha, gravedad: @diagnostico.gravedad, medico_id: @diagnostico.medico_id, paciente_id: @diagnostico.paciente_id, recomendaciones: @diagnostico.recomendaciones, tipo_diagnostico: @diagnostico.tipo_diagnostico } }
    assert_redirected_to diagnostico_url(@diagnostico)
  end

  test "should destroy diagnostico" do
    assert_difference("Diagnostico.count", -1) do
      delete diagnostico_url(@diagnostico)
    end

    assert_redirected_to diagnosticos_url
  end
end
