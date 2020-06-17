class CLI
    def greeting

        puts "Welcome to Yelp"

    end
    
    def get_business

        puts "What are you looking for in NYC?"
      
        term = gets.strip

      
        puts "Great!"

      
        self.get_business_in_NYC(term)
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
