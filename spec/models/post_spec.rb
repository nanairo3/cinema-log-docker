require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is valid with a content' do
      post = FactoryBot.build(:post)
      expect(post).to be_valid
  end
  
  it 'is invalid without an content' do
      post = FactoryBot.build(:post, content: nil)
      post.valid?
      expect(post.errors[:content]).to include("can't be blank")
  end
end
