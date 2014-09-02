require 'garage'

describe DockingStation do
	let (:bike) { Bike.new }
	let (:garage) { Garage.new(:capacity => 30) }

	it 'should allow setting of default capacity when initialising' do
		expect(garage.capacity).to eq 30
	end
end