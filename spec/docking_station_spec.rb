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

	it "should have a capacity of 10" do
		expect(station.capacity).to eq(10)
	end

	it "should know when it's not full" do 
		station.dock(bike)
		expect(station).not_to be_full
	end

	it "should know when its full" do
		10.times {station.dock(bike)}
		expect(station).to be_full
	end

	it "should not dock a bike if full" do 
		10.times {station.dock(bike)}
		expect(lambda{station.dock(bike)}).to raise_error(RuntimeError)
	end

	it "should not release bike if empty" do 
		expect(lambda{station.release(bike)}).to raise_error(RuntimeError)
	end

	# it "should not release a 'not working' bike" do 
	# 	broken_bike
	# 	station.dock(bike)
	# 	station.release(bike)
	# 	expect(station.bike_count).to eq(0)
	# end 



	end

