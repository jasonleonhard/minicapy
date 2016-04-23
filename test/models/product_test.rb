# ruby -Itest test/models/product_test.rb
require 'test_helper'

# minitest style
class ProductTest < ActiveSupport::TestCase # < MiniTest::Unit::TestCase
	def test_to_param
    product = Product.create!(name: "Hello World")	    
    assert_equal "#{product.id}-hello-world", product.to_param # product.rb
	end
end