require 'rails_helper'

RSpec.describe PostsController, type: :controller do
    
    describe '#show' do
        before do
           @cinema = FactoryBot.create(:cinema)
           @user = FactoryBot.create(:user, email: "show@example.com")
           @post = FactoryBot.create(:post, user: @user) 
        end
        
       it '正常にレスポンスを返す' do
           get :show, params: { id: @cinema.id }
           expect(response).to be_success
       end
       
       it '200レスポンスを返す' do
          get :show, params: { id: @cinema.id }
          expect(response).to have_http_status "200"
       end
    end
    
    describe '#new' do
       before do
            @cinema = FactoryBot.create(:cinema)
            @user = FactoryBot.create(:user, email: 'create@gmail.com')
       end
       
       it "200レスポンスを返す" do
           sign_in @user
           get :new, params: { id: @cinema.id }
           expect(response).to have_http_status "200"
       end
       
       context "ゲストとして" do
          it "302レスポンスを返す" do
              get :new, params: { id: @cinema.id }
              expect(response).to have_http_status "302"
          end
          
          it "サインイン画面にリダイレクトする" do
             get :new, params: {id: @cinema.id}
             expect(response).to redirect_to "/users/sign_in"
          end
       end
    end
    
    describe '#create' do
        before do
            @cinema = FactoryBot.create(:cinema)
            @user = FactoryBot.create(:user, email: 'create@gmail.com')
        end
        
        it "投稿する、有効" do
            post_params = FactoryBot.attributes_for(:post)
            sign_in @user
            expect {
                post :create, params: { post: post_params, id: @cinema.id }
            }.to change(@user.posts, :count).by(1)
        end
        
        context "ゲストとして" do
           it "302レスポンスを返す" do
              post_params = FactoryBot.attributes_for(:post)
              post :create, params: { post: post_params, id: @cinema.id }
              expect(response).to have_http_status "302"
           end
           
           it "サインイン画面にリダイレクトする" do
               post_params = FactoryBot.attributes_for(:post)
               post :create, params: { post: post_params, id: @cinema.id }
               expect(response).to redirect_to "/users/sign_in"
           end
           
        end
    end
    
    describe "#update" do
        context "認可されたユーザ" do
            before do
               @user = FactoryBot.create(:user, email: "update2@example.com")
               @post = FactoryBot.create(:post, user: @user)
            end
            
            it "更新できる" do
               post_params = FactoryBot.attributes_for(:post, content: "最高！！") 
               sign_in @user
               patch :update, params: { id: @post.id, post: post_params }
               expect(@post.reload.content).to eq "最高！！"
            end
        end
        
        context "認可されていないユーザ" do
            before do
                @user = FactoryBot.create(:user, email: "noupdate@example.com")
                @cinema = FactoryBot.create(:cinema)
                other_user = FactoryBot.create(:other_user)
                @post = FactoryBot.create(:post, user: other_user,cinema: @cinema, content: "no update")
            end
            
            it '更新できないこと' do
               post_params = FactoryBot.attributes_for(:post, content: "new")
               sign_in @user
               patch :update, params: { id: @post.id, post: post_params }
               expect(@post.reload.content).to eq "no update"
            end
            
            it 'ルートパスへリダイレクトされる' do
               post_params = FactoryBot.attributes_for(:post)
               sign_in @user
               patch :update, params: { id: @post.id, post: post_params }
               expect(response).to redirect_to "/post/#{@post.cinema_id}"
            end
        end
    end
    
    
end
