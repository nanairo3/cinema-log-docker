# frozen_string_literal: true

require 'rails_helper'

RSpec.describe Cinema, type: :model do
  it 'is valid with a title, image' do
    cinema = build(:cinema)
    expect(cinema).to be_valid
  end

  it 'is valid without a title' do
    cinema = build(:cinema, title: nil)
    cinema.valid?
    expect(cinema.errors[:title]).to include('を入力してください')
  end

  it 'is valid without a image' do
    cinema = build(:cinema, image: nil)
    cinema.valid?
    expect(cinema.errors[:image]).to include('を入力してください')
  end
end
