
class Van
  def transport(docking_station, garage)
    docking_station.each do |bike| 
        garage.push(bike)
    end
    docking_station.each do |bike|
      docking_station.delete(bike)
    end
  end

  def return(docking_station, docking_capacity, garage)
    garage.each_with_index do |bike, idx|
      if docking_station.length < docking_capacity
        docking_station.push(bike)
        garage.delete_at(idx)
      end
    end
    # garage.each do |bike|
    #   garage.delete(bike)
    # end
  end
end
