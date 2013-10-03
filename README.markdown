# LnkdtoGo (Unofficial Lnkdto Gem)
This gem is the unofficial gem for using the Lnkdto API service (http://lnkdto.com/about/api). If you intend to use this gem you will need an account with Lnkdto.

[![Gem Version](https://badge.fury.io/rb/ystock.png)](http://badge.fury.io/rb/ystock) [![Build Status](https://travis-ci.org/gregwinn/lnkdtogo.png?branch=master)](https://travis-ci.org/gregwinn/lnkdtogo) [![Code Climate](https://codeclimate.com/github/gregwinn/lnkdtogo.png)](https://codeclimate.com/github/gregwinn/lnkdtogo)

## Lnkdto Account needed
Go to: http://lnkdto.com/about/api and signup for an account.

## Install or place into your Gemfile
```
gem "lnkdtogo", "~> 3.2.0"
```
```
gem install lnkdtogo
```

## Configure the service with you API key's
```ruby
Lnkdtogo.configure do |config|
	config.key = "12345"
	config.secret = "67890"
end
```

## Usage
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
