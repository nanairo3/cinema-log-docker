FactoryBot.define do
    factory :post do
        content {'最高！'}
        association :user
        association :cinema
    end
end