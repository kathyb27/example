require 'launchy'

key = ["크리스마스", "초콜렛", "커피"]

url = "https://search.naver.com/search.naver?query="

key.each do |key|
	keyword = url + key
	Launchy.open(keyword)
	end
#puts "커피....."
#puts "I will kill you...."
#puts "Merry Christmas"
#puts "잼잼"
#puts "All I Want For Christmas Is You"
