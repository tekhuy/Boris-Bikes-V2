class Van

  def initialize
    @bikes = []
  end

  def bike_count
    @bikes.count
  end

  def dock(bike)
    @bikes << bike
  end

  def collect(station)
    @bikes << @broken_bikes
  end

  def broken_bikes
  end

end