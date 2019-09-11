# frozen_string_literal: true

class RemoveUsersToUsers < ActiveRecord::Migration[5.2]
  def change
    remove_column :users, :users, :string
  end
end
