require 'nokogiri'
require 'open-uri'

def crypto_scrapper(top)
	res = []
	page = Nokogiri::HTML(URI.open("https://coinmarketcap.com/all/views/all/"))
	1.upto(top) do |i|
		name = page.xpath("//*[@id='__next']/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{i}]/td[3]/div")
		price = page.xpath("//*[@id='__next']/div[1]/div[2]/div/div[1]/div/div[2]/div[3]/div/table/tbody/tr[#{i}]/td[5]/div/a")
		res << Hash[name.text => price.text[1..-1].to_f]
	end
	res
end

puts crypto_scrapper(20)
