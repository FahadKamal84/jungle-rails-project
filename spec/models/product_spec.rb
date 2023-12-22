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
    
    it "validates that price field is not blank" do
      @product.price_cents = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Price can't be blank")
    end

    it "validates that quantity field is not blank" do
      @product.quantity = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Quantity can't be blank")
    end

    it "validates that category field is not blank" do
      @product.category = nil
      expect(@product.save).to be false
      expect(@product.errors.full_messages).to include("Category can't be blank")
    end

  end
end
