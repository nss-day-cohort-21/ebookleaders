namespace :bookclubpro do
desc "Automatically posts book content to Twitter"
task :update_ebookleaders do 
	require 'json'
	require 'open-uri'

#post books to twitter

url=  Book.find(5) 
data = JSON.parse(url)

book = data["book.titleLstring"]

client.update("#{book}")
puts "It worked Yo"

end

end
