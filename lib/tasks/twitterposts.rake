namespace :bookclubpro do
desc "Automatically posts book content to Twitter"
task :update_ebookleaders do 
	# require 'json'
	# require 'open-uri'

#post book info to twitter

#url =  @Book.find(5) 
#data = JSON.parse(url)

#book = data["book.titleLstring"]

#client.update("#{url}")

client.update("Nominate Beyond The Burning Shore : Searching For Survival #Book @bookclubpro1 http://www.bookclubpro.com/books/85")

#puts "It worked Yo"

end

end
