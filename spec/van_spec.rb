require "van"
require "docking_station"

describe Van do
  it "The Van Takes broken bikes from broken_bikes_array to the garages" do
    van = Van.new
    
    docking_station = double(docking_station, :broken_bikes => ["bike", "bike", "bike", "bike"])
    
    garage = double(garage, :fix => [])
    van.transport(docking_station.broken_bikes, garage.fix)
    expect(docking_station.broken_bikes.length).to eq(0)
    expect(garage.fix.length).to eq(4)
  end

  it "The van takes fixed bikes from garage to docking stations" do
    van = Van.new
    docking_station = double(docking_station, :bikes => [], :capacity => 5) 
    garage = double(garage, :fix => ["bike", "bike", "bike", "bike"])
    
    van.return(docking_station.bikes, docking_station.capacity, garage.fix)
    expect(docking_station.bikes.length).to eq(4)
    expect(garage.fix.length).to eq(0)
  end

  it "the van only returns bikes upto the docking station's capacity" do
    van = Van.new
    docking_station = double(docking_station, :bikes => ["bike", "bike"], :capacity => 5) 
    garage = double(garage, :fix => ["bike", "bike", "bike", "bike"])
    
    van.return(docking_station.bikes, docking_station.capacity, garage.fix)

    expect(docking_station.bikes.length).to(eq(docking_station.capacity))
    expect(garage.fix.length).to eq(0)
  end
end 