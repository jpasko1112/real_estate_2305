require 'spec_helper'

RSpec.describe House do
  before(:each) do
    @house = House.new("$400000", "123 sugar lane")
    @room1 = Room.new(:bedroom, 10, '13')
    @room2 = Room.new(:bedroom, 11, '15')
    @room3 = Room.new(:living_room, 25, '15')
    @room4 = Room.new(:basement, 30, '41')
  end

  describe '#initialize' do
    it 'can initialize' do
      expect(@house).to be_a(House)
    end

    it 'can have attributes' do
      expect(@house.price).to eq(400000)
      expect(@house.address).to eq("123 sugar lane")
    end
  end

  describe '#rooms' do
    it 'begins with an empty array' do
      expect(@house.rooms).to eq([])
    end

    it 'can add rooms' do
      expect(@house.rooms).to eq([])
      @house.add_room(@room1)
      @house.add_room(@room2)
      expect(@house.rooms).to eq([@room1, @room2])
    end
  end

  describe '#above_market_average?' do
    it 'returns true if price is greteater than $500,000' do
      expect(@house.above_market_average?).to eq(false)
    end
  end

  describe '#rooms_from_category(category)' do
    it 'returns rooms from category' do
      @house.add_room(@room1)
      @house.add_room(@room2)
      @house.add_room(@room3)
      @house.add_room(@room4)
      expect(@house.rooms_from_category(:bedroom)).to eq([@room1, @room2])
      expect(@house.rooms_from_category(:basement)).to eq([@room4])
    end
  end

  describe '#area' do
    it 'returns total area of all rooms' do
      @house.add_room(@room1)
      @house.add_room(@room2)
      @house.add_room(@room3)
      @house.add_room(@room4)
      expect(@house.area).to eq(1900)
    end
  end

  describe '#details' do
    it 'returns a hash of attributes' do
      expect(@house.details).to eq({"price" => 400000, "address" => "123 sugar lane"})
    end
  end
end