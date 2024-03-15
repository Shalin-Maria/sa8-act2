class User
    attr_reader :username
    def initialize(username)
      @username = username
      validate_username!(@username) 
    end
    def username=(new_username)
      validate_username!(new_username) 
      @username = new_username
    end
  
    private
    def validate_username!(username)
      raise ArgumentError, "Username cannot be empty or nil" unless username && !username.empty?
    end
  end
  #case1 
  user = User.new("Shalin")
  puts user.username  
  #case2
  begin
    user.username = nil
  rescue ArgumentError => e
    puts e.message  # Outputs: Username cannot be empty or nil
  end
  