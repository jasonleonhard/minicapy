require 'test_helper'

# capybara
describe "Products integration" do
  it "shows product's name" do
    product = Product.create!(name: "Sushi")
    visit product_path(product)
    page.text.must_include "Sushi"
    # will require 
  end
end
