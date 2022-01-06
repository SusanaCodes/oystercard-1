require_relative "journey"
class Oystercard
  
  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1
  attr_reader :balance, :entry_station, :exit_station

  def initialize
    @balance = 0
    @in_use = false
    @journeys = []
  end
  
  def top_up(amount)
    fail "maximum balance of #{MAXIMUM_BALANCE} exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def in_journey?
    !!@entry_station
  end


    def touch_in(entry_station)
    fail 'unable to touch in, insufficient balance' if @balance < MINIMUM_BALANCE
    @in_use = true
    @entry_station = entry_station
    @journeys << {start: entry_station}
  end

  def touch_out(exit_station)
    @in_use = false
    deduct(MINIMUM_BALANCE)
    @entry_station = nil
    @exit_station = exit_station
    @journeys.last[:finish] = exit_station
  end

  private

  def deduct(amount)
    @balance -= amount
  end
end