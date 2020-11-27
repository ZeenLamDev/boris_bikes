# require 'docking_station.rb'

# describe DockingStation do
#   let(:bike) {Bike.new}

#   describe '#release_bike' do
#     it "raise an error if no bikes available" do
#       expect { subject.release_bike }.to raise_error "No bikes available"
#     end
#     it "can release a bike" do
#       subject.dock(bike)
#       expect(subject.release_bike).to eq bike
#     end
#   end

#   describe 'dock' do
#     it "returns docked bikes" do
#       # bike = Bike.new
#       subject.dock(bike)
#       expect(subject.dock(bike)).to eq(bike)
#       expect(subject).to respond_to(:dock).with(1).argument
#     end

#     it "raise an error if full" do
#       subject.dock(bike)
#       expect { subject.dock Bike.new }.to raise_error "Docking station is full"
#     end

#   # describe 'bike to return a docked bike' do
#     # it "can show docked bikes when read with .bike" do
#     #   bike = Bike.new
#     #   station = DockingStation.new
#     #   station.dock(bike)

#     #   expect(subject).to respond_to(:bikes)
#     #   expect(station.bikes).to eq(bike)
#     # end
#   end
# end

