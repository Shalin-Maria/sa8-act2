class Writer
    def initialize(name)
      @name = name
    end
  
    def create
      puts "#{@name} is writing..."
    end
  end
  
  class Painter
    def initialize(name)
      @name = name
    end
  
    def create
      puts "#{@name} is painting..."
    end
  end
  
  def showcase_talent(artists)
    for artist in artists
      if artist.respond_to?(:create)
        artist.create
      else
        puts "#{artist.class} cannot showcase talent."
      end
    end
  end
  
  # Create artist objects
  writer = Writer.new("shalin")
  painter = Painter.new("Maria")
  artists = [writer, painter, "Musician"]  
  showcase_talent(artists)