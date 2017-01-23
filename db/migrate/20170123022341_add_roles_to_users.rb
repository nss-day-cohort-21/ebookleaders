class AddRolesToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :superadmin_role, :boolean, default: false
    add_column :users, :book_promoter_role, :boolean, default: false
    add_column :users, :user_role, :boolean, default: true
  end
end
