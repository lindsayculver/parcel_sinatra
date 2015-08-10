require('rspec')
require('parcel')

describe(Parcel) do

  describe("#volume") do
    it("returns the volume based on length, height and width") do
      test_volume = Parcel.new(5, 4, 3)
      expect(test_volume.volume()).to(eq(60))
    end
  end

  describe("#cost_to_ship") do
    it("retuns the cost based on volume, speed and weight") do
      test_cost_to_ship = Parcel.new(60, 2, 10)
      expect(test_cost_to_ship.cost_to_ship()).to(eq(150))
    end
  end
end
