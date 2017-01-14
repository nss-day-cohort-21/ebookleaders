class ChangeEbookpriceToFloat < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :ebookprice, :float
  end
end
