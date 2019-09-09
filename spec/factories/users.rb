FactoryBot.define do
  factory :user do
    name {'userA'}
    email{'a@example.com'}
    password{'apassword'}
    password_confirmation{'apassword'}
  end
  
  factory :other_user, class: 'User' do
    sequence(:name) { |n| "アザーユーザー_#{n}" }
    sequence(:email) { |n| "other_#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end
end
