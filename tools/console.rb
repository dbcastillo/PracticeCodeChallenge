require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

max = Driver.new("Max", 99)
alexa = Driver.new("Alexa", 98)
dena = Driver.new("Dena", 97)
# Put your variables here~!

binding.pry

