require_relative "bike"

class DockingStation

  def initialize
  end

  def release_bike
    @bike = Bike.new
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike

end
