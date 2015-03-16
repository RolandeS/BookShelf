class Book < ActiveRecord::Base
	belongs_to :shelf

	# require 'uri'

	# def fetch_icon(url)
	# 	#book.fetch_icon(link)
	# 	uri = URI.parser(url)
	# 	uri.path = "/favicon.ico"
	# 	p uri

	# 	data = open(uri).read
	# 	p data

	# 	#can use this: http://www.google.com/s2/favicons?domain_url=bitmakerlabs.com
	# end

	# def display_icon
	# end
end
