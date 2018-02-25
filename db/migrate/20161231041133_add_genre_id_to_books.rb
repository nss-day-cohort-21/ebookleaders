class AddGenreIdToBooks < ActiveRecord::Migration[5.0]

  def self.up
    add_column :books, :genre_id, :integer
  end

  def self.down
    # remove_column :books, :genre_id, :integer
  end

end
