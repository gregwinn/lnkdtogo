require './lib/lnkdtogo.rb'
require 'json'
describe Lnkdtogo, "Connection" do
	it "Test the configuration of the Gem" do
		Lnkdtogo.configure do |config|
			# => Below are test credentials and are not active on the live service.
			config.key = "S19emFwv_C2w3Rn_RW9BWw"
			config.secret = "G6ZzIPCYNvUjkNp4mHGv0A"
		end
	end

	it "Test Shares connection Single URL" do
		Lnkdtogo.configure do |config|
			# => Below are test credentials and are not active on the live service.
			config.key = "S19emFwv_C2w3Rn_RW9BWw"
			config.secret = "G6ZzIPCYNvUjkNp4mHGv0A"
		end
		Lnkdtogo.shares("http://winn.ws")
		# => Errno::ECONNREFUSED = Service not running
	end

	it "Test Shares connection Multiple URLs" do
		Lnkdtogo.configure do |config|
			# => Below are test credentials and are not active on the live service.
			config.key = "S19emFwv_C2w3Rn_RW9BWw"
			config.secret = "G6ZzIPCYNvUjkNp4mHGv0A"
		end
		many = Lnkdtogo.shares(["http://winn.ws", "http://winncd.com"])
		JSON.parse(many).count.should eq(2)
		# => Errno::ECONNREFUSED = Service not responding
	end
end