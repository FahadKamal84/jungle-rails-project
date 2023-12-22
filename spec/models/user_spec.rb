require 'rails_helper'

RSpec.describe User, type: :model do
  describe "Validations" do
    before(:each) do
      @user = User.new(
        first_name: "firsttest",
        last_name: "lasttest",
        email: "test@test.com",
        password: "1234567",
        password_confirmation: "1234567"
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

    it "validates that first_name field is not blank" do
      @user.first_name = nil
      expect(@user.save).to be false
      expect(@user.errors.full_messages).to include("First name can't be blank")
    end

    it "validates that last_name field is not blank" do
      @user.last_name = nil
      expect(@user.save).to be false
      expect(@user.errors.full_messages).to include("Last name can't be blank")
    end

    it "password must have a minimum length of six" do
      @user.password = "1234"
      expect(@user.save).to be false
      expect(@user.errors.full_messages).to include("Password is too short")
    end

  end
end
