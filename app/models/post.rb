# frozen_string_literal: true

class Post < ApplicationRecord
  validates :content, presence: true, length: { maximum: 140 }
  validates :cinema_id, presence: true
  belongs_to :user, optional: true
  belongs_to :cinema, optional: true

  def user
    User.find(user_id)
  end
end
