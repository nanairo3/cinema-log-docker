# frozen_string_literal: true

class Cinema < ApplicationRecord
  validates :name, presence: true
  validates :image, presence: true
end
