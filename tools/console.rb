require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

bart = Passenger.new("Bart")
dominik = Passenger.new("Dominik")
ronalyssa = Passenger.new("Ronalyssa")

cart = Driver.new("Cart")
frominik = Driver.new("Frominik")
monalisa = Driver.new("Monalisa")

ride_one = Ride.new(cart, bart, 3.2)
ride_four = Ride.new(cart, dominik, 8.2)
ride_five = Ride.new(cart, ronalyssa, 4.1)
ride_six = Ride.new(cart, ronalyssa, 3.1)
ride_seven = Ride.new(cart, ronalyssa, 6.1)
ride_two = Ride.new(frominik, dominik, 1000.8)
ride_three = Ride.new(monalisa, ronalyssa, 10000.9)
# Put your variables here~!

binding.pry

