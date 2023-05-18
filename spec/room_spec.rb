require 'spec_helper'

RSpec.describe Room do
  before(:each) do
    @room1 = Room.new(:bedroom, 10, '13')
    @room2 = Room.new(:living_room, 15, '12')
  end

  describe "Iteration 1" do
    it "exists" do
      expect(@room1).to be_a Room
  end

    it "it has a category" do
      @room = Room.new(:bedroom, 10, '13')

      expect(@room.category).to eq(:bedroom)
    end

    it "can get area" do
      expect(@room1.area).to eq(130)
      expect(@room2.area).to eq(180)
    end
  end

  describe '#is_painted?' do
    it 'is false by default' do
      expect(@room1.is_painted?).to eq(false)
    end
  end

  describe '#paint' do
    it 'changes is_painted? to true' do
      expect(@room1.is_painted?).to eq(false)
      @room1.paint
      expect(@room1.is_painted?).to eq(true)
    end
  end
end
