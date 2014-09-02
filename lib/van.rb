require_relative 'bike_container'
class Van

	include BikeContainer

	# When initializing the Docking Station, if it is given an options hash with
	# :capacity as a key it takes that value. Otherwise it takes DEFAULT_CAPACITY
	def initialize(options = {})
		self.capacity = options.fetch(:capacity, capacity)
	end
end