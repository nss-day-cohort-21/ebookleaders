class AddEbookpriceToBooks < ActiveRecord::Migration[5.0]
 
  def self.up
    add_column :books, :ebookprice, :integer
  end

  def self.down
    # remove_column :books, :ebookprice, :integer
  end
  
end
