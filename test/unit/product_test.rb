require 'test_helper'

class ProductTest < ActiveSupport::TestCase

test "product attributes must not be empty" do
	product = Product.new(
		title: 			"My book Title",
		description: 	"yyy",
        image_url: 		"zzz.jpg"
    )

    product.price = -1
	assert product.invalid?
	assert_equal "must be greater than or equal to 0.01",
		product.errors[price].join(';')

	product.price = 0
	assert product.invalid?
	assert_equal "must be greater than or equal to 0.01",
		product.errors[:price].join(';')

	product.price = 1
	assert product.valid?
end

