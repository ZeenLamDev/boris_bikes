require 'docking_station.rb'

describe DockingStation do

  let(:bike) {Bike.new}

  describe '#release_bike' do
    it "can release a bike" do
      # bike = Bike.new
      subject.dock(bike)
      expect(subject.release_bike).to eq bike
    end
    it "raise an error if no bikes available" do
      expect { subject.release_bike }.to raise_error "No bikes available"
    end
  end

  describe '#dock' do
    it "returns docked bikes" do
      bike = Bike.new
      subject.dock(bike)
      expect(subject.dock(bike)).to eq(bike)
      expect(subject).to respond_to(:dock).with(1).argument
    end

    it "raise an error if full" do
      subject.dock(Bike.new)
      expect { subject.dock Bike.new}.to raise_error "Docking station is full"
    end
  end

  # describe '#bike to return a docked bike' do
  #   it "can show docked bikes when read with .bike" do
  #     bike = Bike.new
  #     station = DockingStation.new
  #     station.dock(bike)

  #     expect(subject).to respond_to(:bike)
  #     expect(station.bike).to eq(bike)
  #   end
  # end

  # it "raises error" do
  #   expect {DockingStation.release_bike}.to raise_error
  # end

end