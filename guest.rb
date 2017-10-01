class Guest

  attr_reader :name
  attr_accessor :room_no, :money

  def initialize(name, money)
    @name = name
    @money = money
    @room_no = 0
  end

  def deduct_entry_fee(entry_fee)
    @money -= entry_fee
  end
  
end
