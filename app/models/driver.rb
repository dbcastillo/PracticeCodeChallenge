class Driver
  attr_reader :name
  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all

  end

  def rides
    # GRAB ALL THE RIDES
    all_rides = Ride.all
    # FILTER RIDES SPECIFIC TO THIS DRIVER
    all_rides.select do |ride|
      ride.driver == self
    end
  end

  def passenger_names
    # GRAB THIS DRIVER'S RIDES
    my_rides = self.rides
    # GRAB THE PASSENGER OBJECTS FROM THAT LIST
    my_passengers = my_rides.map do |ride|
      ride.passenger
    end
    # GRAB THE PASSENGER NAMES FROM THAT LIST
    passenger_names = my_passengers.map do |pass|
      pass.name
    end
    # GET RID OF THE DUPLICATES
    passenger_names.uniq
  end

  def mileage
    my_rides = self.rides
    my_distance = my_rides.map do |ride|
      ride.distance
    end
    my_distance.sum.round(1)
  end

  def self.mileage_cap(distance)
    drivers = []
    # GRAB ALL DRIVERS
    # ITERATE OVER THE DRIVERS
    self.all.each do |driver|
      if driver.mileage > distance
        drivers << driver
      end
    end
    # ADD THEM TO THE ARRAY IF THEIR MILEAGE IS ABOVE DISTANCE
    # RETURN DRIVERS ARRAY
    drivers
  end

end