class AddEbookpriceToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :ebookprice, :integer
  end
end
