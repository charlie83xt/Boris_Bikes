class Garage
  attr_reader :fix

  def initialize
    @fix = []
  end
  
  def repair
    @fix.each do |bike|
      bike.change_status
    end
  end

end