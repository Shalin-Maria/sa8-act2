class Appliance
    def show_info
      puts "This is a household appliance."
    end
  end
  
  class Refrigerator < Appliance
    def show_refrigerator_info
      puts "This appliance keeps your food cool and fresh."
    end
  end
  
  class Microwave < Appliance
    def show_microwave_info
      puts "This appliance heats your food quickly and conveniently."
    end
  end
refrigerator = Refrigerator.new
microwave = Microwave.new
refrigerator.show_info
refrigerator.show_refrigerator_info
microwave.show_info
microwave.show_microwave_info