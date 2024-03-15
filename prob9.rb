class Camera
    def initialize
      @status = :off  
    end
  
    def turn_on
      self.status = :on  
      puts "Camera is now on."
    end
  
    def turn_off
      self.status = :off  
      puts "Camera is now off."
    end
  
    def status
      @status 
    end
  end

camera = Camera.new
camera.turn_on 
puts "Camera status:", camera.status  
camera.turn_off  
  