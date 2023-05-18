require 'spec_helper'

RSpec.describe House do
  before(:each) do
    @house = House.new("$400000", "123 sugar lane")
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
end