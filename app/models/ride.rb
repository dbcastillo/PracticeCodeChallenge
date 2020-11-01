class Ride
  attr_reader :passenger, :driver, :distance
  @@all = []

  def initialize(driver, passenger, distance)
    @driver = driver
    @passenger = passenger
    @distance = distance
    @@all << self
  end

  def self.all
    @@all
  end

  def self.average_distance
    # GRAB ALL RIDES
    # GRAB ALL DISTANCES
     all_distances = self.all.map do |ride|
      ride.distance
    end
    # SUM THE DISTANCES
    distance_sum = all_distances.sum

    ride_size = self.all.size.to_f
    # SUM DIVIDED BY RIDE SIZE
    (distance_sum / ride_size).round(1)

  end

end