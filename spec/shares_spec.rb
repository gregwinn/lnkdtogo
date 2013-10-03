require './lib/lnkdtogo.rb'
require 'json'
describe Lnkdtogo, "Connection" do
	it "Test the configuration of the Gem" do
		Lnkdtogo.configure do |config|
			# => Below are test credentials and are not active on the live service.
			config.key = "12345"
			config.secret = "67890"
		end
	end
end