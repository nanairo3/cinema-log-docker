# frozen_string_literal: true

class User < ApplicationRecord
  has_one_attached :image
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
  validates :name, presence: true

  def remember_me
    true
  end

  def posts
    @posts = Post.where(user_id: id)
  end
end
