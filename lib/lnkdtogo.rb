require 'net/http'
require 'rest-client'
require 'yaml'
module Lnkdtogo
	# => Auth Configuration from config block
	class Configuration
	    attr_accessor :key, :secret

	    def initialize
	      self.key 		= nil
	      self.secret 	= nil
	    end
	end

	def self.configuration
	  @configuration ||=  Configuration.new
	end

	def self.configure
	  yield(configuration) if block_given?
	end

	class << self
		attr_accessor :key, :secret, :api_path
		def key
	    	raise "The API key is needed" unless @key
	    	@key
	    end

	    def secret
	    	raise "The API secret is needed" unless @secret
	    	@secret
	    end

	    def api_path
	    	@api_path = "http://lnkdto.com"
	    end
	end

	def self.shares(urls)
		if urls.is_a? Array
			# => many_urls
			many_urls(urls)
		else
			# => single_url
			single_url(urls)
		end
		# Lnkdtogo.configuration.key
	end

	# => Private methods used for the public method [shares].
	private
	def self.many_urls(urls)
		clean_array = Array.new
		urls.each{|url| clean_array << {"url" => url}}
		RestClient.post Lnkdtogo.api_path + '/api', [{"urls" => clean_array, 
								"key" => Lnkdtogo.configuration.key, 
								"secret" => Lnkdtogo.configuration.secret}].to_json, 
								:content_type => :json, :accept => :json
	end

	def self.single_url(url)
		RestClient.get Lnkdtogo.api_path + '/api', {:url => url, 
								"key" => Lnkdtogo.configuration.key, 
								"secret" => Lnkdtogo.configuration.secret}
	end
end