require_relative "bike"

class DockingStation

  attr_reader :bike
  # def initialize
  #   @bike = nil
  # end

  def release_bike
    raise
  end

  def dock(bike)
    fail "Docking station full" if @bike
    @bike = bike
    end
  end




=begin
if !@bike.nil?
  @bike = bike
else
  raise Exception.new
end
=end
