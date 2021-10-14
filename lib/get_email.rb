require 'nokogiri'
require 'open-uri'

def get_townhall_email(townhall_url)
	page = Nokogiri::HTML(URI.open(townhall_url))
	email = page.xpath("/html/body/div/main/section[2]/div/table/tbody/tr[4]/td[2]")
	email.text
end

def get_townhall_urls
	res = []
	page = Nokogiri::HTML(URI.open("http://www.annuaire-des-mairies.com/val-d-oise.html"))
	links = page.xpath('//a[contains(@href,"95")]/@href')
		links.each do |l|
			res << "http://www.annuaire-des-mairies.com/" + l.text[2..-1]
		end
	res
end

def get_townhall_emails(urls)
	res = []
	urls.each do |url|
		town = url[39..-1].gsub(".html", "").capitalize
		print "Récupération de l'email de la mairie de #{town}"
		res << Hash[town => get_townhall_email(url)]
		puts " ✅"
	end
	res
end

#puts get_townhall_email("https://www.annuaire-des-mairies.com/95/avernes.html")
#puts get_townhall_urls()
#print get_townhall_emails(get_townhall_urls())
