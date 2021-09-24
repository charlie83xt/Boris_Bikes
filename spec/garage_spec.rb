require "garage"
require "bike"

describe Garage do
  it "repair method should fix broken bikes" do
    garage = Garage.new
    4.times {garage.fix.push(Bike.new(false))}
    garage.repair
    last_bike = garage.fix[-1]
    expect(last_bike.working?).to(eq(true))
  end
end