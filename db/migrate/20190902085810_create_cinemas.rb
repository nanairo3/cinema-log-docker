# frozen_string_literal: true

class CreateCinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :cinemas do |t|
      t.string :name
      t.string :image

      t.timestamps
    end
  end
end
