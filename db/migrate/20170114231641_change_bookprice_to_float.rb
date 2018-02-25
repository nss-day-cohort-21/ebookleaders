class ChangeBookpriceToFloat < ActiveRecord::Migration[5.0]

  def self.up
    change_column :books, :bookprice, :float
    end

  def self.down
    # change_column :books, :bookprice, :integer
  end
end
