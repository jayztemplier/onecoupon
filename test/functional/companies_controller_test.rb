require 'test_helper'

class CompaniesControllerTest < ActionController::TestCase
  def test_index
    get :index
    assert_template 'index'
  end

  def test_new
    get :new
    assert_template 'new'
  end

  def test_create_invalid
    Company.any_instance.stubs(:valid?).returns(false)
    post :create
    assert_template 'new'
  end

  def test_create_valid
    Company.any_instance.stubs(:valid?).returns(true)
    post :create
    assert_redirected_to companies_url
  end

  def test_edit
    get :edit, :id => Company.first
    assert_template 'edit'
  end

  def test_update_invalid
    Company.any_instance.stubs(:valid?).returns(false)
    put :update, :id => Company.first
    assert_template 'edit'
  end

  def test_update_valid
    Company.any_instance.stubs(:valid?).returns(true)
    put :update, :id => Company.first
    assert_redirected_to companies_url
  end
end
