class Yelp

    attr_accessor :name, :rating, :address, :phone, :category, :price

    @@all = []

    def initialize(name, rating, address, phone, category, price)
        self.name = name
        self.rating = rating
        self.address = address
        self.phone = phone
        self.category = category
        self.price = price
        self.save
    end

    def save
        @@all << self
    end
    
    def self.all
        @@all
    end
end
