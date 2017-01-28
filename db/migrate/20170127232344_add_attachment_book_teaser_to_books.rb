class AddAttachmentBookTeaserToBooks < ActiveRecord::Migration
  def self.up
    change_table :books do |t|
      t.attachment :book_teaser
    end
  end

  def self.down
    remove_attachment :books, :book_teaser
  end
end
