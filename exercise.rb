class Location

  def initialize(name)
    @name = name
  end

  def name()
    return @name
  end

end

class Trip

  def initialize()
    @stops = []
  end

  def add_trip(stop)
    @stops << stop
  end

  def showStops()
    puts "Began trip,"
    @stops.each_cons(2) { |first,second|
      puts "Travelled from #{first.name} to #{second.name}."
    }
    puts "Ended trip."
  end

end


tor = Location.new("Toronto")
mtl = Location.new("Montreal")
vnc = Location.new("Vancouver")
nyc = Location.new("New York City")
bst = Location.new("Boston")

summerVacation = Trip.new()
summerVacation.add_trip(tor)
summerVacation.add_trip(mtl)
summerVacation.add_trip(vnc)
summerVacation.add_trip(nyc)
summerVacation.add_trip(bst)

summerVacation.showStops()
