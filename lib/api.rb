require 'rest-client'

class API

    def get_data
      RestClient.get 'https://api.yelp.com/v3/businesses/search', {Authorization:"Bearer cDB26-cLjIZ5A0ex9Tk1gXjwHdFYrc9H4oEoTH99nAGKPw-awucezTGGd2hlHrTjxN-ZsU92SETe1gTSyA286QIPn-D8hwCoueQL6Cyx_eEQXtVeFs46J9Tl3N_oXnYx"}
      end
end
