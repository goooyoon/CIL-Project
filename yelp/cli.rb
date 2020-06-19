class CLI
    def greeting
        API.cafe_detail
        puts "Welcome to Yelp! What's your name?".colorize(:magenta)
        puts "Enter your neme:".colorize(:magenta)
        name = gets.strip
        puts "Hello #{name}!".colorize(:magenta)
        puts ""
        ask_cafe
    end

    def ask_cafe
        puts "Here is a list of best cafe in NYC. Choose one.".colorize(:magenta)
        Yelp.all.each_with_index do |cafe, index|
        puts "#{index + 1} #{cafe.name}".colorize(:blue)
        end
        get_detail
    end

    def get_detail
        user_input = gets.strip
        if cafe = Yelp.all.find { |cafe| user_input == cafe.name }
        puts "Please see below for detail:".colorize(:magenta)
        puts ""
        puts "Name: #{cafe.name}".colorize(:blue)
        puts "Category: #{cafe.category}".colorize(:blue)
        puts "Price: #{cafe.price}".colorize(:blue)
        puts "Rating: #{cafe.rating}".colorize(:blue)
        puts "Phone: #{cafe.phone}".colorize(:blue)
        puts "Address: #{cafe.address}".colorize(:blue)
        puts "Url: #{cafe.url}".colorize(:blue)
        puts "Please choose another. Type exit to exit.".colorize(:magenta)
        get_detail

        elsif user_input == "exit"
        conclusion

        else 
        puts "Invalid input. You only need to type cafe name. Please retype. Type exit to exit.".colorize(:magenta)
        get_detail
        end
    end

    def conclusion
            puts "Hope you found what you need today! Goodbye.".colorize(:magenta)
    end
end