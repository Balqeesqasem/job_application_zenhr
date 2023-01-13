require 'rails_helper'

RSpec.describe User, type: :model do
  context "user model validation" do 

    it "Should create successfully" do 
      new_user = {email: "balqees@gmail.com", password: "123456789"}
      user = User.new(new_user).save
      user.should(be(true))
    end

    it "Must have password" do 
      new_user = {email: "balqees@gmail.com"}
      user = User.new(new_user).save
      user.should(be(false))
    end

    it "Must have email" do 
      new_user = { password: "123456789"}
      user = User.new(new_user).save
      user.should(be(false))
    end

    it "Email must be unique" do 
      user_1 = {email: "balqees@gmail.com", password: "123456789"}
      user_2 = {email: "balqees@gmail.com", password: "123456789"}
      first_user = User.new(user_1).save
      first_user.should(be(true))
      second_user = User.new(user_2).save
      second_user.should(be(false))
    end
  end

  

end
