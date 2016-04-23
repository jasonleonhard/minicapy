# ruby -Itest test/models/product_spec.rb
require 'test_helper'

# '~rspec styled' minitest # not standard rspec
describe Product do
  it "includes name in to_param" do
    product = Product.create!(name: "Hello World")
    product.to_param.must_equal "#{product.id}-hello-world"
  end
end