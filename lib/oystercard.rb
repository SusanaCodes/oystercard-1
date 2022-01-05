class Oystercard
  
  MAXIMUM_BALANCE = 90
  MINIMUM_BALANCE = 1
  attr_reader :balance, :entry_station, :exit_station

  def initialize
    @balance = 0
    @in_use = false
    @entry_station = false
    @exit_station = false
  end
  
  def top_up(amount)
    fail "maximum balance of #{MAXIMUM_BALANCE} exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def in_journey?
    !!@entry_station
  end

  def touch_in(station)
    fail 'unable to touch in, insufficient balance' if @balance < MINIMUM_BALANCE
    @in_use = true
    @entry_station = station
  end

  def touch_out(station)
    @in_use = false
    deduct(MINIMUM_BALANCE)
    @entry_station = nil
    @exit_station = station
  end

  private

  def deduct(amount)
    @balance -= amount
  end
end