class AddAttachmentBookImageToBooks < ActiveRecord::Migration[5.0]
  def self.up
    change_table :books do |t|
      t.attachment :book_imgage
    end
  end

  def self.down
    # remove_attachment :books, :book_imgage
  end
end
