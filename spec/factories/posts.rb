# frozen_string_literal: true

FactoryBot.define do
  factory :post do
    content { '最高！' }
    association :user
    association :cinema
  end
end
