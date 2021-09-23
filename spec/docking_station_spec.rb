require "docking_station"

describe DockingStation do
    it "it should respond to release a bike" do 
     docking_station = DockingStation.new
     expect(docking_station).to respond_to(:release_bike)
    end

    # it "it should get a bike" do 
    #     bike = Bike.new
    #     docking_station = DockingStation.new
    #     expect(docking_station.release_bike).to be_a Bike 
    #     expect(bike.working?).to eq(true)
    # end

    it "it should add a bike to counter for our docking station" do
        #Arrange
        bike = Bike.new
        docking_station = DockingStation.new
        #Act
        docking_station.dock
        #Expect
        expect(docking_station.bikes.length).to eq(1)
    end
=begin
    it "it should create an instance of the Bike class" do 
        bike = Bike.new
        docking_station = DockingStation.new
        expect(docking_station.dock).to be_a Bike
    end
=end 
    it "it should raise an error when we request an empty docking station to release a bike" do 
        bike = Bike.new
        docking_station = DockingStation.new
        expect{ docking_station.release_bike }.to raise_error("There are no bikes")
    end
    it "it should raise an error when we request to dock a bike at a full docking station" do 
        bike = Bike.new
        docking_station = DockingStation.new
        capacity = DockingStation::DEFAULT_CAPACITY
        capacity.times { docking_station.dock }
        expect{ docking_station.dock }.to raise_error
        # to be able to push
    end

    it "allows a user to set a @capacity instance variable when docking_station is called" do
        docking_station = DockingStation.new(30)

        expect(docking_station.capacity).to eq(30)
    end
    it "sets @capacity to DEFAULT CAPACITY when no arguments are given" do
        docking_station = DockingStation.new

        expect(docking_station.capacity).to eq(20)
    end
  end