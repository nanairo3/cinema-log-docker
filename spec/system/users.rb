require 'rails_helper'

describe 'ユーザ管理', type: :system do
    describe 'Read' do
      
        let(:user_a) { FactoryBot.create(:user, name: "userA", email: "a@example", password: "test_password") }
        let(:cinema_a) {FactoryBot.create(:cinema, name: "グリーンブック", image: "https://images-na.ssl-images-amazon.com/images/I/51tdBs32wuL.jpg")}
        
        before do
            FactoryBot.create(:post, content: "面白い！", user: user_a, cinema: cinema_a)
            FactoryBot.create(:user, name: "userB", email: "b@example", password: "b_password")
            visit login_path
            fill_in 'メールアドレス', with: login_user.email
            fill_in 'パスワード', with: login_user.password
            click_button 'Login'
        end
       
        context 'user_aがログインしているとき' do
            let(:login_user) {user_a}
        
            it 'users#show,名前,投稿が表示される' do
               visit user_path(user_a)
               expect(page).to have_content 'userA'
               expect(page).to have_content "面白い！"
            end
           
            it 'users#index,登録ユーザの名前一覧が表示される' do
               visit users_path
               expect(page).to have_content 'userA'
               expect(page).to have_content 'userB'
            end
            
            it 'usrs#edit' do
                visit edit_user_path(id: user_a.id)
                expect(page).to have_content 'ユーザの編集'
            end
       end
       
    end
end