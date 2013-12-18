require "./lib/docking_station"

describe DockingStation do 

	let(:bike){Bike.new}
	let(:station){DockingStation.new}

	it "should have no bikes in the docking station" do 
		expect(station.bike_count).to eq (0)
	end

	it "should be able to dock a bike" do
		station.dock(bike)
		expect(station.bike_count).to eq(1) 
	end 

	it "should be able to release a bike that is docked" do 
		station.dock(bike)
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq(1)
	end



	end

