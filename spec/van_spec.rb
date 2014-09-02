require 'van'

describe DockingStation do
	let (:bike) { Bike.new }
	let (:van) { Van.new(:capacity => 30) }

	it 'should allow setting of default capacity when initialising' do
		expect(van.capacity).to eq 30
	end
end