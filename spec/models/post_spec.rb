# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Post, type: :model do
  it 'is valid with a content' do
    post = build(:post)
    expect(post).to be_valid
  end

  it 'is invalid without an content' do
    post = build(:post, content: nil)
    post.valid?
    expect(post.errors[:content]).to include('を入力してください')
  end
end
