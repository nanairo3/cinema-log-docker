require 'rails_helper'

describe '投稿一覧表示', type: :system do
  let!(:cinema){ create(:cinema) }
  let!(:posts){ create_list(:post, 5, cinema: cinema) }
  let!(:user){ create(:user) }
  
  before do
    sign_in_as user
    visit cinema_page_path(cinema.movie_id)
  end
  
  describe '正常系' do
    context '投稿一覧が正常に表示される場合'do
      it '投稿一覧が表示される'do
        expect(page).to have_content posts[0].content
        expect(page).to have_content posts[1].content
        expect(page).to have_content posts[2].content
        expect(page).to have_content posts[3].content
        expect(page).to have_content posts[4].content
      end
    end
  end
end