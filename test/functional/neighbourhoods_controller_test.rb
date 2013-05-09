require 'test_helper'

class NeighbourhoodsControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Neighbourhood.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Neighbourhood.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to neighbourhoods_url
  end

  def test_edit
    get :edit, :id => Neighbourhood.first
    assert_template 'edit'
  end

  def test_update_invalid
    Neighbourhood.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Neighbourhood.first
    assert_template 'edit'
  end

  def test_update_valid
    Neighbourhood.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Neighbourhood.first
    assert_redirected_to neighbourhoods_url
  end
end
