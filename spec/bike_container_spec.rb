require 'bike_container'

# since we can't instantiate a module we need to create 
# an arificial class for it.
class ContainerHolder; include BikeContainer; end

describe BikeContainer do
	let(:bike) { Bike.new }
	let(:holder) { ContainerHolder.new }

	def fill(holder)
		20.times { holder.dock(Bike.new) }
	end

	it 'should have no bike to start wth' do
		expect(holder.bike_count).to eq 0
	end

	it 'should be able to accept bikes' do
		holder.dock(bike)
		expect(holder.bike_count).to eq 1
	end

	it 'should be able to release a bike' do
		holder.dock(bike)
		holder.release(bike)
		expect(holder.bike_count).to eq 0
	end

	it 'should know when it is full' do
		expect(holder).not_to be_full
		20.times { holder.dock(Bike.new) }
		expect(holder).to be_full
	end

	it 'should not accept more bikes after reaching the limit' do
		fill holder
		expect( lambda { holder.dock(bike) }).to raise_error(RuntimeError)
	end

	it 'should be able to provide a list of working bikes to rent' do
		working_bike, broken_bike = Bike.new, Bike.new
		broken_bike.break!
		holder.dock(working_bike)
		holder.dock(broken_bike)
		expect(holder.available_bikes).to eq( [working_bike] ) 
	end

end