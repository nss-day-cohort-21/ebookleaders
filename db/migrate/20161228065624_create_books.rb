class CreateBooks < ActiveRecord::Migration[5.0]
  def change
    create_table :books do |t|
      t.string :titleLstring
      t.string :details
      t.string :author

      t.timestamps
    end
  end
end