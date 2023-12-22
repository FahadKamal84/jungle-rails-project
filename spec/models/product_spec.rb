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

  end
end
