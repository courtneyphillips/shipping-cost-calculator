require('rspec')
require('parcel')

describe('Parcel') do
  describe('#volume') do
    it('returns the volume for given length, width, and height') do
      parcel = Parcel.new(10, 5, 5, 10, 10, false)
      expect(parcel.volume()).to(eq(250))
    end

    it('returns shipping cost for given weight') do
      parcel = Parcel.new(5, 5, 5, 10, 10, false)
      expect(parcel.ship_cost()).to(eq(11.35))
    end
  end
end
