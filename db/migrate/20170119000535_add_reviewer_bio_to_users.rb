class AddReviewerBioToUsers < ActiveRecord::Migration[5.0]
  def change
    add_column :users, :reviewer_bio, :text
  end
end
