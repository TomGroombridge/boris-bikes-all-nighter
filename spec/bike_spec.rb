require './lib/bike'

describe Bike do

let (:bike) {Bike.new}

	it "should have a bike" do 
		expect(bike).to eq bike 
	end

	it "it should be working when the bike is created" do
		expect(bike).to be_working
	end

	it "should be able to break" do 
		bike.break
		expect(bike).not_to be_working		
	end

	it "should be able to be fixed when broken" do 
		bike.break
		bike.fix
		expect(bike).to be_working
	end

end