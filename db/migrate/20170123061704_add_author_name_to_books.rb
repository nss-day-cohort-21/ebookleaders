class AddAuthorNameToBooks < ActiveRecord::Migration[5.0]

  def self.up
    add_column :books, :author_name, :string
  end

  def self.down
    remove_column :books, :author_name, :string
  end

end
