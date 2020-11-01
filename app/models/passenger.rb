class Passenger
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
    # Returns an array of Ride instances that this person has been on
     # GRAB ALL THE RIDES
     all_rides = Ride.all
     # FILTER RIDES SPECIFIC TO THIS PASSENGER
     all_rides.select do |ride|
       ride.passenger == self
     end
  end

  def drivers
    # Returns an array of Driver instances that this person has rode with
    self.rides.map do |ride|
      ride.driver
    end 
  end

  def total_distance
    # Returns the floating number that represents the total distance the passenger has travelled using the service
    my_rides = self.rides
    my_distance = my_rides.map do |ride|
      ride.distance
    end
    my_distance.sum.round(1)
  end

  def self.premium_members
    passengers_array = []
    # Returns an array of all Passengers who have travelled over 100 miles in total with the service

    #GRAB ALL PASSENGERS
    #ITERATE OVER PASSENGERS
    self.all.each do |passenger|
      if passenger.total_distance > 100
        passengers_array << passenger
      end
    end
    #ADD PASSENGER TO ARRAY IF DISTANCE > 100
    passengers_array.map do |passenger_name|
      passenger_name.name
    end
  end



end