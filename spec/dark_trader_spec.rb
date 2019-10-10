require_relative "../lib/dark_trader.rb"

describe "for crypto_name" do
  it "should return crypto name array" do
    expect(crypto_name).to be_an_instance_of(Array)
  end
end

describe "for crypto_price" do
    it "should return crypto_price array" do
      expect(crypto_price).to be_an_instance_of(Array)
    end
end

describe "for doc" do
    it "should return string non null" do
        expect(doc).not_to eq(nil)
    end
end