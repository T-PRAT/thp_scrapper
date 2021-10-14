require_relative '../lib/crypto_scrapper'

describe "return top crypto list" do
	it "return #1 crypto with price" do
		expect(crypto_scrapper(1)).to eq([{"BTC"=>57.0}])
	end
end
