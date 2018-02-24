 class Book < ApplicationRecord
	belongs_to :user
	belongs_to :genre
	has_many :reviews
	
 

	has_attached_file :book_imgage, styles: { book_index: "245x345>", book_show: "310x460>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_imgage, content_type: /\Aimage\/.*\z/

	has_attached_file :book_teaser, styles: { book_index: "245x345>", book_show: "310x460>" }, default_url: "/images/:style/missing.png"
  validates_attachment_content_type :book_teaser, content_type: /\Aimage\/.*\z/


	# search feature
  def self.search(search)
		if search
			self.where("lower(details) || lower(author) like ?", "%#{search.downcase}%")
		else
			self.all
		end
	end

end
