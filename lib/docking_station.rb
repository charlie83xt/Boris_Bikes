

class DockingStation
    attr_reader :bikes
    attr_reader :capacity
    attr_reader :broken_bikes
    DEFAULT_CAPACITY = 20
    

    def initialize(capacity = DEFAULT_CAPACITY)
      @capacity = capacity
      @bikes = []
      @broken_bikes = []
    end

    def release_bike
      self.empty? ? raise("There are no bikes") : self.bikes.pop
    end 

    def dock(bike, working = true)
      if self.full?
       raise "This docking station is full"
      else 
        if working
          @bikes << bike
        else
          @broken_bikes << bike
        end
      end
    end

    private 

    def full? 
      @bikes.length + @broken_bikes.length >= DEFAULT_CAPACITY ? true : false 
    end 

    def empty?
      @bikes.length == 0 ? true : false 
    end 
end
