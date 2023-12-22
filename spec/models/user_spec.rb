require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    before(:each) do
      @user = User.new(
        first_name: "firsttest",
        last_name: "lasttest",
        email: "test@test.com",
        password: "1234",
        password_confirmation: "1234"
      )
    end

    it "password and password_confirmation must be identical" do
      expect(@user.save).to be true
    end

    it "validates that email field is not blank" do
      @user.email = nil
      expect(@user.save).to be false
      expect(@user.errors.full_messages).to include("Email can't be blank")
    end

  end
end
