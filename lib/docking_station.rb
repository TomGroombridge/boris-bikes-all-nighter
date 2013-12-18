require "./lib/bike"

class DockingStation

	def initialize
		@bikes = []
	end

	def dock(bike)
		@bikes << bike
	end

	def bike_count
		@bikes.count
	end

	def release(bike)
		@bikes.delete_at(1)
	end

end