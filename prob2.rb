class Gadget
    attr_reader :name
    attr_writer :price
    def initialize(name, price)
      @name = name
      @price = price
    end
  end
  gadget = Gadget.new("Smartwatch", 200)
  puts "Gadget name: #{gadget.name}"
  gadget.price = 250  
  puts "Updated price: #{gadget.price}"  