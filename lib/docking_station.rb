require_relative "bike"

class DockingStation

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
      @bikes.count >= 20
  end

  def empty?
    @bikes.empty?
  end

end