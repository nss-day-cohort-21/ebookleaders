class AddAmazonLinkToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :amazon_link, :string
  end
end
