require 'test_helper'

class ApplicationControllerTest < ActionController::TestCase
  test "cart returns the user's shopping cart, an initially empty array" do
    assert @controller.cart == []
  end

  test "cart creates a cart if one doesn't exist" do
    assert session[:cart].nil?
    assert @controller.cart == session[:cart]
  end

  test "cart returns the existing cart if one already exists" do
    groceries = ['apples', 'banans', 'pears']
    session[:cart] = groceries
    assert @controller.cart == session[:cart]
    assert @controller.cart == groceries
  end
end
