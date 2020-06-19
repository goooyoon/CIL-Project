class CLI
    def greeting
        API.cafe_detail
        puts "Welcome to Yelp! What's your name?"
        puts "Enter your neme:"
        name = gets.strip
        puts "Hello #{name}!"
        puts ""
        ask_cafe
    end

    def ask_cafe
        puts "Here is a list of best cafe in NYC. Choose one."
        Yelp.all.each_with_index do |cafe, index|
        puts "#{index + 1} #{cafe.name}"
        end
        get_detail
    end

    def get_detail
        user_input = gets.strip
        if cafe = Yelp.all.find { |cafe| user_input == cafe.name }
        puts "Please see below for detail:"
        puts "Name: #{cafe.name}"
        puts "Category: #{cafe.category}"
        puts "Price: #{cafe.price}"
        puts "Rating: #{cafe.rating}"
        puts "Phone: #{cafe.phone}"
        puts "Address: #{cafe.address}"
        puts "Please choose another. Type exit to exit."
        get_detail

        elsif user_input == "exit"
        conclusion

        else 
        puts "Invalid input. Please retype. Type exit to exit."
        get_detail
        end
    end

    def conclusion
            puts "Hope you found what you need today! Goodbye."
    end
end