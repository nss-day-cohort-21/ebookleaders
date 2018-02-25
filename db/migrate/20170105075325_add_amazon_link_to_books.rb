class AddAmazonLinkToBooks < ActiveRecord::Migration[5.0]
  
  def self.up
    add_column :books, :amazon_link, :string
  end

  def self.down
    # remove_column :books, :amazon_link, :string
  end

end
