# frozen_string_literal: true

class Cinema < ApplicationRecord
  validates :title, presence: true
  validates :image, presence: true
  validates :movie_id, presence: true

  def user
    User.find(user_id)
  end
end

