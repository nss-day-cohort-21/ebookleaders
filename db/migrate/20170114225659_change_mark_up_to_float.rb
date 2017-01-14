class ChangeMarkUpToFloat < ActiveRecord::Migration[5.0]
  def change
  	change_column :books, :bookprice, :float
  end

  def change
  	change_column :books, :ebookprice, :float
  end

end
