require 'test_helper'

class ProductTest < ActiveSupport::TestCase
  fixtures :products

  test "product attributes must not be empty" do
    product = Product.new(
      title: "products(:ruby).title",
      description: "yyy",
      price: 1,
      image_url: "fred.gif"
    )
    assert !product.save
    assert_equal I18n.translate('activerecord.errors.messages.taken'), product.errors[:title].join(';')
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