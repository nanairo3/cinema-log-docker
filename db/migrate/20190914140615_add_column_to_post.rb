class AddColumnToPost < ActiveRecord::Migration[5.2]
  def change
    add_column :posts, :movie_id, :integer, null: false, default: 0
  end
end
