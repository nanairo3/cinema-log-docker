# frozen_string_literal: true

class AddForeignKeyToPost < ActiveRecord::Migration[5.2]
  def change
    remove_column :posts, :user_id
    remove_column :posts, :cinema_id
    # add_reference :posts, :user, foreign_key: true
    add_reference :posts, :cinema, foreign_key: true
  end
end
