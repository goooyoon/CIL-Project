require 'net/http'
require 'open-uri'
require 'json'

class API
    BASE_URL = ""

    def get_programs
        uri = URI.parse(URL)
        response = Net::HTTP.get_response(uri)
        response.body
      end
     
end

require 'open-uri'
require 'net/http'
url = "https://api.yelp.com/v3/businesses/search"
uri = URI.parse(url)
response = Net::HTTP.get_response(uri)
response.body