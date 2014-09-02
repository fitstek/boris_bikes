require 'docking_station'

describe DockingStation do
	let (:bike) { Bike.new }
	let (:station) { DockingStation.new }

	it 'should have no bike to start wth' do
		expect(station.bike_count).to eq 0
	end

	it 'should be able to accept bikes' do
		station.dock(bike)
		expect(station.bike_count).to eq 1
	end

	it 'should be able to release a bike' do
		station.dock(bike)
		station.release(bike)
		expect(station.bike_count).to eq 0
	end

	it 'should know when it is full' do
		expect(station).not_to be_full
		20.times { station.dock(Bike.new) }
		expect(station).to be_full
	end
end