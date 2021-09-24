
class Van
  def transport(docking_station, garage)
    docking_station.broken_bikes.each_with_index do |bike, idx| 
        garage.push(bike)
        docking_station.delete_at(idx)
    end
  end
end
