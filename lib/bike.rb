class Bike
    attr_reader :working
    def initialize(working=true)
      @working = working
    end
    def working?
      working
    end
    def change_status
      @working ? @working = false : @working = true
    end
end 