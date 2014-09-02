require 'docking_station'

describe DockingStation do
	let (:bike) { Bike.new }
	let (:station) { DockingStation.new(:capacity => 30) }

	it 'should allow setting of default capacity when initialising' do
		expect(station.capacity).to eq 30
	end
end