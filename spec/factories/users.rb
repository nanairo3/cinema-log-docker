# frozen_string_literal: true

FactoryBot.define do
  factory :user do
    name { 'userA' }
    sequence(:email) { |n| "a#{n}@example.com" }
    password { 'apassword' }
    password_confirmation { 'apassword' }
  end

  factory :other_user, class: 'User' do
    sequence(:name) { |n| "otherユーザー_#{n}" }
    sequence(:email) { |n| "other_#{n}@example.com" }
    password { 'password' }
    password_confirmation { 'password' }
  end

  factory :test_user, class: 'User' do
    name { 'test_user' }
    email { 'test@example.com' }
    password { 'testpass' }
    password_confirmation { 'testpass' }
  end
end
