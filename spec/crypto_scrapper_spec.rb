require_relative '../lib/crypto_scrapper'

re
describe "return top crypto list" do
	it "return #1 crypto with price" do
		expect(crypto_scrapper(1)).to eq([{"BTC"=>57.0}])
	end
	it "return the 3 first crypto with price" do
		expect(crypto_scrapper(3)).to eq([{"BTC"=>57.0}])
	end
end
