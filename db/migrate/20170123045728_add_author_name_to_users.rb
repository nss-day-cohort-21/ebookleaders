class AddAuthorNameToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :author_name, :string
  end
end
