class ChangeBookpriceToFloat < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :bookprice, :float
  end
end
