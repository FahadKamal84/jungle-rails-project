require 'rails_helper'

RSpec.describe Product, type: :model do
  describe 'Validations' do
    before :each do
      @category = Category.create(name: "Test Category")
      @product = Product.new(
        name: "test product",
        price: 10.00,
        quantity: 2,
        category: @category
        )
    end
    it "validates a product with all four fields set will save" do
      expect(@product.save).to be true
    end

    it "validates that name field is not blank" do
      @product.name = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Name can't be blank")
    end
    

  end
end
