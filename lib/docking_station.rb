require_relative "bike"

class DockingStation


  def initialize
    @bike = nil
  end

  def release_bike
    raise Exception.new
  end

  def dock(bike)
    @bike = bike
  end

  attr_reader :bike

end
