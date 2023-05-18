class House
  attr_reader :price, 
              :address
              :rooms

  def initialize(price, address)
    # require 'pry'; binding.pry
  @price = price.delete('$').to_i
  @address = address
  @rooms = []
  end
end