require 'test_helper'

class CitiesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    City.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    City.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to cities_url
  end

  def test_edit
    get :edit, :id => City.first
    assert_template 'edit'
  end

  def test_update_invalid
    City.any_instance.stubs(:valid?).returns(false)
    put :update, :id => City.first
    assert_template 'edit'
  end

  def test_update_valid
    City.any_instance.stubs(:valid?).returns(true)
    put :update, :id => City.first
    assert_redirected_to cities_url
  end
end
