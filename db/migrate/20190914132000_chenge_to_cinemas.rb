class ChengeToCinemas < ActiveRecord::Migration[5.2]
  def change
    add_column :cinemas, :title, :string, null: false, default: ""
    add_column :cinemas, :movie_id, :integer, null: false, default: 0
    remove_column :cinemas, :name
  end
end
