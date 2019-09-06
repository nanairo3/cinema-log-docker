require 'rails_helper'

RSpec.describe User, type: :model do
  it "is valid with a first name, last name, email, and password" do
      user = FactoryBot.build(:user)
      expect(user).to be_valid
  end
  
  it "is invalid without a name" do
     user = FactoryBot.build(:user, name: nil)
     user.valid?
     expect(user.errors[:name]).to include("can't be blank")
  end
  
  it "is invalid without an email" do
      user = FactoryBot.build(:user, email: nil)
      user.valid?
      expect(user.errors[:email]).to include("can't be blank")
  end
  
  it "is invalid with a duplicate email address" do
      FactoryBot.create(:user, email: 'duplicate@email.com')
      user = FactoryBot.build(:user, email: 'duplicate@email.com')
      user.valid?
      expect(user.errors[:email]).to include("has already been taken")
  end
  
  it "is invalid without an password" do
      user = FactoryBot.build(:user, password: nil)
      user.valid?
      expect(user.errors[:password]).to include("can't be blank")
  end
end
