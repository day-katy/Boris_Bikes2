require 'docking_station'

describe DockingStation do

  it { is_expected.to respond_to(:release_bike) }

  it "should release a working bike" do
    bike = subject.release_bike
    expect(bike.working?).to eq true
  end

  it "should dock a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  # it "should release bike" do
  #   DockingStation.new respond_to(release_bike)
  #   end
end
