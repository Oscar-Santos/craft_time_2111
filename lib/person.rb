class Person
  attr_reader :name,
              :interests,
              :supplies

  def initialize(info)
    @name = info[:name]
    @interests = info[:interests]
    @supplies = {}
  end

  def add_supply(supply, quantity)
    if @supplies[supply].nil?
      @supplies[supply] = quantity
    else
      @supplies[supply] += quantity
    end
  end
end
