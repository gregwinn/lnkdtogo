# LnkdtoGo (Unofficial Lnkdto Gem)
This gem is the unofficial gem for using the Lnkdto API service (http://lnkdto.com/about/api). If you intend to use this gem you will need an account with Lnkdto.


## Install the gem or place it into your Gemfile
```
gem "lnkdtogo", "~> 3.2.0"
```

## Configure the service with you API key's
```ruby
Lnkdtogo.configure do |config|
	config.key = "12345"
	config.secret = "67890"
end
```

## Request!
```ruby
# Single url
Lnkdtogo.shares("http://someWebSite.com")

# Multiple url's
Lnkdtogo.shares(["http://someWebSite.com", "http://anotherSite.net"])
```
----

### Tested with
Ruby: 1.9.2

Ruby: 1.9.3

Ruby: 2.0.0

----

# Support
*Note:* I do not provide support for Lnkdto.com service, this is an unofficial gem. Open an issue for gem issues email Lnkdto support for service issues.