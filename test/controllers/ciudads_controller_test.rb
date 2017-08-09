require 'test_helper'

class CiudadsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @ciudad = ciudads(:one)
  end

  test "should get index" do
    get ciudads_url
    assert_response :success
  end

  test "should get new" do
    get new_ciudad_url
    assert_response :success
  end

  test "should create ciudad" do
    assert_difference('Ciudad.count') do
      post ciudads_url, params: { ciudad: { codigo_area: @ciudad.codigo_area, estado_id: @ciudad.estado_id, nombre: @ciudad.nombre, status: @ciudad.status } }
    end

    assert_redirected_to ciudad_url(Ciudad.last)
  end

  test "should show ciudad" do
    get ciudad_url(@ciudad)
    assert_response :success
  end

  test "should get edit" do
    get edit_ciudad_url(@ciudad)
    assert_response :success
  end

  test "should update ciudad" do
    patch ciudad_url(@ciudad), params: { ciudad: { codigo_area: @ciudad.codigo_area, estado_id: @ciudad.estado_id, nombre: @ciudad.nombre, status: @ciudad.status } }
    assert_redirected_to ciudad_url(@ciudad)
  end

  test "should destroy ciudad" do
    assert_difference('Ciudad.count', -1) do
      delete ciudad_url(@ciudad)
    end

    assert_redirected_to ciudads_url
  end
end
