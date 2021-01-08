require_relative "bike"

class DockingStation
  DEFAULT_CAPACITY = 20
  def initialize
    @bikes = Array.new
  end

  def release_bike
    fail "No bikes docked" if empty?
    @bikes.pop
  end

  def dock(bike)
    fail "Docking station full" if full?
    @bikes.push(bike)
    end

    private

    def full?
      @bikes.count >= DEFAULT_CAPACITY
  end

  def empty?
    @bikes.empty?
  end

end
