class Bot < ApplicationRecord
	def self.search_words words 
		CLIENT.search(words, lang: "en").first.text 
	end
end
