require 'rails_helper'

RSpec.describe Cinema, type: :model do
  it 'is valid with a name, image' do
     cinema = FactoryBot.build(:cinema)
     expect(cinema).to be_valid
  end
  
  it 'is valid without a name' do
      cinema = FactoryBot.build(:cinema, name: nil)
      cinema.valid?
      expect(cinema.errors[:name]).to include("can't be blank")
  end
  
  it 'is valid without a image' do
      cinema = FactoryBot.build(:cinema, image: nil)
      cinema.valid?
      expect(cinema.errors[:image]).to include("can't be blank") 
  end
end
