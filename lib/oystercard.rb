class Oystercard
  
  MAXIMUM_BALANCE = 90
  attr_reader :balance

  def initialize
    @balance = 0
  end
  
  def top_up(amount)
    fail "maximum balance of #{MAXIMUM_BALANCE} exceeded" if amount + balance > MAXIMUM_BALANCE
    @balance += amount
  end

  def deduct(amount)
    @balance -= amount
  end
end