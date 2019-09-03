class Post < ApplicationRecord
    validates :content, {presence: true, length: {maximum: 140}}
    validates :cinema_id, {presence: true}
end
