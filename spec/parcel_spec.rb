require('rspec')
require('parcel')

describe(Parcel) do

  describe("#volume") do
    it("returns the volume based on length, height and width") do
      test_volume = Parcel.new(5, 4, 3, 0, 0, 0)
      expect(test_volume.volume()).to(eq(60))
    end
  end

  describe("#cost_to_ship") do
    it("returns the cost based on volume, speed and weight") do
      test_cost_to_ship = Parcel.new(5, 4, 3, 2, 10, false)
      expect(test_cost_to_ship.cost_to_ship()).to(eq(145))
    end

    it("adds five to the total cost if user wants gift wrapping") do
      test_cost_to_ship = Parcel.new(5, 4, 3, 2, 10, true)
      expect(test_cost_to_ship.cost_to_ship()).to(eq(150))
    end
  end
end
