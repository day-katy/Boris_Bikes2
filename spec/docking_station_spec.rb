require 'docking_station'

describe DockingStation do

  describe "#release_bike" do
  it "should respond to release_bike" do
    expect(DockingStation.new).to respond_to :release_bike
    end

    it "should release a bike" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end

    it "should not release a bike if a bike is not there" do
      expect { subject.release_bike }.to raise_error "No bikes docked"
    end
  end

  describe '#dock' do
    it 'it responds to dock' do
      expect(DockingStation.new).to respond_to :dock
    end

    it 'returns and docks a bike' do
      bike = Bike.new
      expect(subject.dock(bike)).to eq [bike]
    end

    it 'raises an error when full' do
      20.times { subject.dock(Bike.new) }
      expect { subject.dock Bike.new }.to raise_error "Docking station full"
    end
  end
end
