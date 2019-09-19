# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    sequence(:content) { |n| "最高！#{n}" }
    association :user
    association :cinema
  end
end
