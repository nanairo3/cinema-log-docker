class CreateWatchedCinemas < ActiveRecord::Migration[5.2]
  def change
    create_table :watched_cinemas do |t|
      t.integer :user_id
      t.integer :cinema_id

      t.timestamps
    end
    add_index :watched_cinemas, :user_id
    add_index :watched_cinemas, :cinema_id
  end
end
