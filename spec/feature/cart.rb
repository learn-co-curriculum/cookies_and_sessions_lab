require 'rails_helper'

RSpec.describe "homepage", :type => :view do
  it "adds items to the cart when they're submitted on its form" do
    visit '/'
    fill_in 'product', 'kumkwats'
    click_button 'add to cart'
    expect(page).to include 'kumquats'
  end
end
