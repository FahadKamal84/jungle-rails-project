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


  end
end
