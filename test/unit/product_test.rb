require 'test_helper'

class ProductTest < ActiveSupport::TestCase

  setup do
    @p = FactoryGirl.create(:product)
    assert @p.valid?
  end
  
  test "description be a valid description" do
    @p.description = ""
    assert !@p.valid?

  test "name be a valid name" do
    @p.name = ""
    refute @p.valid?

  test "must have a price" do
    @p.price = ""
    refute @p.valid?

  test "price be a valid price" do
    @p.price_in_cents = 0.1
    refute @p.valid?

  test "price is formatted properly" do
    a = Product.new
    a.formatted_price = 0
    refute @p.valid?

  # test "the truth" do
  #   assert true
  # end

end
