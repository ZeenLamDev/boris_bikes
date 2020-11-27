require './lib/bike'

class DockingStation

  def initialize
    @bikes = []
  end

  attr_reader :bikes

  def release_bike
    fail "No bikes available" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station is full" if full?
    @bikes << @bike
    @bike = bike
  end

  private
  def full?
    @bikes.length >= 20 ? true : false
  end

  private
  def empty?
    @bikes.length <= 0
  end

end