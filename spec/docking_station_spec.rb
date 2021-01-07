require 'docking_station'

describe DockingStation do

  # it { is_expected.to respond_to(:release_bike) }
it "shouldl not release a bike if no  bike is available" do
expect {subject.release_bike}.to raise_exception
end
  
  # it "should not release a bike if no bike is available" do
  #   expect (subject.release_bike).to raise_exception
  # end

  # it "should release a working bike" do
  #   bike = subject.release_bike
  #   expect(bike.working?).to eq true
  # end

  it "should dock a bike" do
    bike = Bike.new
    expect(subject.dock(bike)).to eq bike
  end

  # it "should release bike" do
  #   DockingStation.new respond_to(release_bike)
  #   end
end
