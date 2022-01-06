require_relative "oystercard"
class Journey
  attr_accessor :entry_station, :exit_station

def initialize(entry_station:, exit_station:)
  @journeys = []
  @entry_station 
  @exit_station
end 


def completed?(entry_station:, exit_station:)
 @entry_station, @exit_station = entry_station, exit_station

end



end 
