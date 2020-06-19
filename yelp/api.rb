class API

  API_KEY = "cDB26-cLjIZ5A0ex9Tk1gXjwHdFYrc9H4oEoTH99nAGKPw-awucezTGGd2hlHrTjxN-ZsU92SETe1gTSyA286QIPn-D8hwCoueQL6Cyx_eEQXtVeFs46J9Tl3N_oXnYx"

      def self.cafe_detail
        response = RestClient.get("https://api.yelp.com/v3/businesses/search?term=cafe&location=NYC&sort_by=best_match", {"Authorization": "Bearer #{API_KEY}"})
        data = JSON.parse(response)
        data["businesses"].each do |best_data_hash|
        name = best_data_hash["name"]
        rating = best_data_hash["rating"]
        # binding.pry
        address = best_data_hash["location"]["disply_address"]
        phone = best_data_hash["display_phone"]
        category = best_data_hash["categories"][0]["title"]
        price = best_data_hash["price"]
        Yelp.new(name, rating, address, phone, category, price)
      end
    end
end