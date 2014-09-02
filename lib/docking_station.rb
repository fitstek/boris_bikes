class DockingStation

	DEFAULT_CAPACITY = 20

	# When initializing the Docking Station, if it is given an options hash with
	# :capacity as a key it takes that value. Otherwise it takes DEFAULT_CAPACITY
	def initialize(options = {})
		@capacity = options.fetch(:capacity, DEFAULT_CAPACITY)
		@bikes ||= []
	end

	def bike_count
		@bikes.count
	end

	def dock(bike)
		raise "Station is full" if full?
		@bikes << bike
	end

	def release(bike)
		@bikes.delete(bike)
	end

	def full?
		bike_count == @capacity
	end
end