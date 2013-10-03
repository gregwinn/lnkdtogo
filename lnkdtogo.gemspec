Gem::Specification.new do |s|
  s.name        = 'lnkdtogo'
  s.version     = '3.2.0'
  s.date        = '2013-10-01'
  s.summary     = "Unofficial Lnkdto.com Gem"
  s.description = "This is an unofficial gem for the service Lnkdto.com"
  s.authors     = ["Greg Winn"]
  s.email       = 'greg@winn.ws'
  s.files       = ["lib/lnkdtogo.rb"]
  s.homepage    = 'http://rubygems.org/gems/lnkdto_gregwinn'
  s.license     = 'MIT'

  # => Other gem dependency
  s.add_dependency("rest-client", "~> 1.6.7")
end