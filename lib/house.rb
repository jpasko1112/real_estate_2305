class House
  attr_reader :price, 
              :address,
              :rooms

  def initialize(price, address)
  @price = price.delete('$').to_i
  @address = address
  @rooms = []
  end

  def add_room(room)
    @rooms << room
  end

  def above_market_average?
    if @price > 500000
    else false
    end
  end

  def rooms_from_category(category)
    @rooms.select do |room|
      room.category == category
    end
  end

  def area
    @rooms.sum do |room|
      room.area
    end
  end

  def details
    details = { "price" => @price, "address" => @address}
  end

  def price_per_square_foot
    ppsf = @price.round / area.to_f
    ppsf.round(2)
  end

  def rooms_sorted_by_area
    @rooms.sort_by do |room|
      room.area
    end.reverse
  end
end