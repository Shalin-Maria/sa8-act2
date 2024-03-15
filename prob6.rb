
module Drivable
    def drive
      puts "Drive module"
    end
  end
  class Car
    include Drivable
  
    def initialize(color, model)
      @color = color
      @model = model
    end
  
    def show_details
      puts "Car details: Color: #{@color}, Model: #{@model}"
    end
  end

  class Truck
    include Drivable
  
    def initialize(capacity)
      @capacity = capacity
    end
  
    def show_details
      puts "Truck details: Capacity: #{@capacity}"
    end
  end
  
  # Create a Car object
  car = Car.new("Grey", "Kia")
  car.show_details   
  car.drive           
  
  # Create a Truck object
  truck = Truck.new(1000)
  truck.show_details 
  truck.drive  