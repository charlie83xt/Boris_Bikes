require "van"
require "docking_station"

describe Van do
it "The Van Takes broken bikes from broken_bikes_array to the garages" do
    van = Van.new
    
    docking_station = double(docking_station, :broken_bikes =>["bike", "bike", "bike", "bike"])
    
    garage = double(garage, :fix => [])
    van.transport(docking_station.broken_bikes, garage.fix)
    expect(docking_station.broken_bikes.length).to eq(0)
    expect(garage.fix.length).to eq(4)
    puts garage.fix
  end
end 