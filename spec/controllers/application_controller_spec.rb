require 'rails_helper'

RSpec.describe ApplicationController do
  describe 'cart' do
    it "returns the user's shopping cart, an initially empty array" do
      expect(controller.cart).to eq []
    end

    it "creates a cart in the session if one doesn't exist" do
      expect(@session[:cart]).to be nil
      expect(controller.cart).to eq session[:cart]
    end

    it "returns the existing cart if one already exists" do
      groceries = ['apples', 'banans', 'pears']
      @session[:cart] = groceries
      expect(controller.cart).to eq @session[:cart]
      expect(controller.cart).to eq groceries
    end
  end
end
