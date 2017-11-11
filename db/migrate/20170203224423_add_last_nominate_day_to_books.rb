class AddLastNominateDayToBooks < ActiveRecord::Migration[5.0]
  def change
    add_column :books, :last_nominate_day, :date
  end
end
