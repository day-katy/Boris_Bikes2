require_relative "bike"

class DockingStation

  def initialize
    @bikes = Array.new
  end

  def release_bike
    fail "No bikes docked" if @bikes.empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if @bikes.count >= 20
    @bikes.push(bike)
    end
  end
