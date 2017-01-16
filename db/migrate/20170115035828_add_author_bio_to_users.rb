class AddAuthorBioToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :author_bio, :text
  end
end
