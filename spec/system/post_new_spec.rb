require 'rails_helper'

describe '新規投稿', type: :system do
  let!(:cinema){ create(:cinema) }
  let!(:user) { create(:user) }
  
  before do
    sign_in_as user
    visit cinema_page_path(cinema.movie_id)
    click_link 'message'
  end
  
  describe '正常系' do
    context '正しくcontentを入力した場合' do
      it '新規投稿できる' do
        fill_in 'post_content', with: '面白い'
        click_button '投稿'
        expect(page).to have_content '投稿を作成しました'
      end
    end
  end
  
  
  describe '異常系' do
    context 'contentが未入力の場合' do
      it '新規投稿できない' do
        fill_in 'post_content', with: ''
        click_button '投稿'
        expect(page).to have_content 'Contentを入力してください'
      end
    end
    
    context 'contentが140文字以上の場合' do
      it '新規投稿できない' do
        fill_in 'post_content', with: 'a' * 141
        click_button '投稿'
        expect(page).to have_content 'Contentは140文字以内で入力してください'
      end
    end
  end
end
