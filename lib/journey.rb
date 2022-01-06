require_relative 'oystercard'
class Journey 
  attr_accessor :entry_station, :exit_station

  def initialize(entry_station:nil, exit_station:nil)
    #@journeys = []
    @entry_station = entry_station
    @exit_station = exit_station
    @complete 
  end 

  def completed?
  @complete = true 
  end 

end 