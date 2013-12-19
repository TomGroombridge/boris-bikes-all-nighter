require "./lib/bike"

class DockingStation

DEFAULT_CAPACITY = 10

	def initialize
		@capacity = DEFAULT_CAPACITY
		@bikes = []
	end

	def dock(bike)
		raise "sorry there is no room" if full?
		@bikes << bike
	end

	def bike_count
		@bikes.count
	end

	def release(bike)
		raise "Sorry there are no bikes available" if bike_count == 0
		@bikes.delete_at(1)
	end

	def capacity
		@capacity
	end

	def full?
		bike_count == @capacity
	end

	def available_bikes

		@bikes.select {|bike| bike.working?}
	end
end