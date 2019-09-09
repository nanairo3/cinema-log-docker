require 'rails_helper'

RSpec.describe User, type: :model do
  it 'name, email,passwordのとき成功' do
    user = FactoryBot.build(:user)
    expect(user).to be_valid
  end
  
  it 'emailがnilのとき無効' do
    user = FactoryBot.build(:user, email: nil)
    user.valid?
    expect(user.errors[:email]).to include("can't be blank")
  end
  
  it 'nameがnilのとき無効' do
      user = FactoryBot.build(:user, name: nil)
      user.valid?
      expect(user.errors[:name]).to include("can't be blank")
  end
  
  it 'passwordがnilのとき無効' do
     user = FactoryBot.build(:user, password: nil)
     user.valid?
     expect(user.errors[:password]).to include("can't be blank")
  end
  
  it 'passwordが6文字以下で無効' do
      user = FactoryBot.build(:user, password: 'test')
      user.valid?
      expect(user.errors[:password]).to include("is too short (minimum is 6 characters)")
  end
  
  it 'emailがすでにあるとき無効' do
      FactoryBot.create(:user, email: 'test@example.com')
      user = FactoryBot.build(:user, email: 'test@example.com')
      user.valid?
      expect(user.errors[:email]).to include("has already been taken")
  end
  

end
