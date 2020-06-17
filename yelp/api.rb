class API

  API_KEY = "cDB26-cLjIZ5A0ex9Tk1gXjwHdFYrc9H4oEoTH99nAGKPw-awucezTGGd2hlHrTjxN-ZsU92SETe1gTSyA286QIPn-D8hwCoueQL6Cyx_eEQXtVeFs46J9Tl3N_oXnYx"
    
  # def self.get_business_in_NYC(term)
  #     response_business = RestClient.get("https://api.yelp.com/v3/businesses/search?term=#{term}&location=NYC", {"Authorization": "Bearer #{API_KEY}"})
  #   end

  # def self.get_restaurant(location)
  #   response_restaurant = RestClient.get("https://api.yelp.com/v3/businesses/search?term=restaurant&location=#{location}", {"Authorization": "Bearer #{API_KEY}"})
  # end

  def self.best_cafe_in_NYC
    response = RestClient.get("https://api.yelp.com/v3/businesses/search?term=cafe&location=NYC&sort_by=best_match", {"Authorization": "Bearer #{API_KEY}"})
    data = JSON.parse(response)
        data["businesses"].each do |best_data_hash|
       name = best_data_hash["name"]
      #puts "Name: #{best_data_hash["name"]}"
        # binding.pry

      #   Yelp.new(name: name, rating: rating, address: address)

      # puts "The best cafe in NYC is #{best_cafe_data["name"]}. and its address is #{best_cafe_data["address"]}." 
        end
      end
  
end

