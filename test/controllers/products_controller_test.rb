require 'test_helper'

class ProductsControllerTest < ActionController::TestCase
  test 'add puts a product in the cart' do
    bananas = 'bananas'
    post :add, product: bananas
    assert session.include? :cart
    assert session[:cart].include? bananas
  end
end
