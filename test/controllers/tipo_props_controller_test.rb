require 'test_helper'

class TipoPropsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @tipo_prop = tipo_props(:one)
  end

  test "should get index" do
    get tipo_props_url
    assert_response :success
  end

  test "should get new" do
    get new_tipo_prop_url
    assert_response :success
  end

  test "should create tipo_prop" do
    assert_difference('TipoProp.count') do
      post tipo_props_url, params: { tipo_prop: { nombre: @tipo_prop.nombre, status: @tipo_prop.status } }
    end

    assert_redirected_to tipo_prop_url(TipoProp.last)
  end

  test "should show tipo_prop" do
    get tipo_prop_url(@tipo_prop)
    assert_response :success
  end

  test "should get edit" do
    get edit_tipo_prop_url(@tipo_prop)
    assert_response :success
  end

  test "should update tipo_prop" do
    patch tipo_prop_url(@tipo_prop), params: { tipo_prop: { nombre: @tipo_prop.nombre, status: @tipo_prop.status } }
    assert_redirected_to tipo_prop_url(@tipo_prop)
  end

  test "should destroy tipo_prop" do
    assert_difference('TipoProp.count', -1) do
      delete tipo_prop_url(@tipo_prop)
    end

    assert_redirected_to tipo_props_url
  end
end
