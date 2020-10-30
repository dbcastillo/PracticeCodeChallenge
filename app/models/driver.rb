class Driver
  attr_reader :name, :age

  @@all = []

  def initialize(name, age)
    @name = name
    @age = age
    @@all << self
  end

  def self.all
    @@all
  end

  def self.names
    self.all.map do |driver|
      driver.name
      binding.pry 
    end
  end
end
