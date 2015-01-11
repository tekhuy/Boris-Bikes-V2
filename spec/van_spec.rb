require 'van'
require 'bike'
require 'docking_station'

describe Van do
  
  let(:van){Van.new}
  let(:bike){Bike.new}
  let(:broken_bike){Bike.new.break!}
  let(:station){DockingStation.new}

  it 'can only accept a broken bike' do
    station.dock(broken_bike)
    station.dock(bike)
    van.collect(station)
    expect(van.broken_bikes.count).to eq(1)
    expect(station.broken_bikes.count).to eq(0)
  end

end