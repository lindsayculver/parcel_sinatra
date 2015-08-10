require('rspec')
require('parcel')

describe(Parcel) do

  describe("#volume") do
    it("returns the volume based on length, height and width") do
    test_volume = Parcel.new(5, 4, 3)
    expect(test_volume.volume()).to(eq(60))
  end
  end
end
