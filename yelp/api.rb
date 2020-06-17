class API

  API_KEY = "cDB26-cLjIZ5A0ex9Tk1gXjwHdFYrc9H4oEoTH99nAGKPw-awucezTGGd2hlHrTjxN-ZsU92SETe1gTSyA286QIPn-D8hwCoueQL6Cyx_eEQXtVeFs46J9Tl3N_oXnYx"
    
  def self.get_business_in_NYC(term)
      response_business = RestClient.get("https://api.yelp.com/v3/businesses/search?term=#{term}&location=NYC", {"Authorization": "Bearer #{API_KEY}"})
    end

  def self.get_restaurant(location)
    response_restaurant = RestClient.get("https://api.yelp.com/v3/businesses/search?term=restaurant&location=#{location}", {"Authorization": "Bearer #{API_KEY}"})
  end
  
end