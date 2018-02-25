class ChangeEbookpriceToFloat < ActiveRecord::Migration[5.0]

  def self.up
    change_column :books, :ebookprice, :float
  end

  def self.down
    # change_column :books, :ebookprice, :integer
  end
end
