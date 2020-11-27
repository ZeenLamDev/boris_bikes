require './lib/bike'

class DockingStation

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    fail "No bikes available" if @bikes.length == 0
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station is full" if @bikes.length > 20
    @bikes << @bike
    @bike = bike
  end
end
