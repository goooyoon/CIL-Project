class CLI
    def greeting

        puts "Welcome to Yelp! What's your name?"
        puts "Enter your neme:"
        name = gets.strip
        puts "Hello #{name}!"

    end
    def ask_cafe
        puts "Here is a list of best cafe in NYC. Choose one."
        API.best_cafe_in_NYC.each_with_index do |name, index|
        puts "#{index + 1} #{name}"
        end
    end
    
    def get_detail
        user_input = gets.strip
        puts "Great!"
        puts "Let me give you more detail of what you chose."
        API.cafe_detail
        binding.pry
        while best_data_hash2["name" => user_input]
        puts "Name: #{name}, Rating: #{rating}, Address: #{address}, Phone: #{phone}, Category: #{catetory}, Price: #{price}"
    end
end

    def get_restaurant

        puts "Where are you currently in?"

        location = gets.strip

        puts "Great!"

        self.get_restaurant(location)
end

    def conclusion

        puts "Are you satisfied with today's service?"

        user_input = gets.strip

        if user_input == "no"

            puts "I am sorry to hear that. We will work on to improve the service."
        
        elsif user_input == "yes"

            puts "We are happy you enjoyed it! Visit us again."
            
        else

            puts "Thank you for the feedback. Goodbye."
    end
end

end