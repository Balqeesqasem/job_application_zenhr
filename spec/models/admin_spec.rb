require 'rails_helper'

RSpec.describe Admin, type: :model do
  context "Admin model validation" do 

    it "Should create successfully" do 
      new_user = {email: "balqees@gmail.com", password: "123456789"}
      user = User.create(new_user)

      admin = user.build_admin.save
      admin.should(be(true))
    end

    it "Must belong to user" do 
      admin = Admin.new.save
      admin.should(be(false))
    end
  end
end  