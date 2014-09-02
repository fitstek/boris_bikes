require 'docking_station'

describe DockingStation do
	let (:bike) { Bike.new }
	let (:station) { DockingStation.new }

	it 'should have no bike to start wth' do
		expect(station.bike_count).to eq 0
	end

end