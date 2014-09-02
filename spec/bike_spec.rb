require 'bike'

describe Bike do
	it 'should not be broken when first created' do
		bike = Bike.new
		expect(bike).not_to be_broken
	end
end