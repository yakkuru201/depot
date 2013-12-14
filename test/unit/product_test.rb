require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  test "product attributes must not be empty" do
    product = Product.new(
      title: "My book Title",
      description: "yyy",
      price: 1,
      image_url: image_url
    )
  end

test "image url"
  ok = %w{ fred.gif fred.jpg fred.png FRED.JPG FRED.Jpg http://a.b.c/x/y/z/fred.gif.more }
  bad = %w{ fred.doc fred.gif/more fred.gif.more }

  ok.each do |name|
    assert new_product(name).valid?,
  end

  bad.each do |name|
    assert new_product(name).invalid?,
  end
end