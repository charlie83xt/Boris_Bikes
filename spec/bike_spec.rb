require "bike"

describe Bike do
    it "should release a bike when requested" do 
      bike = Bike.new
      expect(bike).to respond_to(:working?)
    end

    it "should change bike working status" do
      bike = Bike.new(false)
      bike.change_status
      expect(bike.working?).to(eq(true))
    end
end

