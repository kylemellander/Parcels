require 'rspec'
require 'parcel'

describe(Parcel) {
  describe('#volume') {
    it('returns volume of parcel') {
      parcel = Parcel.new(2,3,4,6)
      expect(parcel.volume).to(eq(24))
    }
  }

  describe('#cost_to_ship') {
    it('returns the cost to ship an item for one day shipping') {
      parcel = Parcel.new(2,3,4,6)
      expect(parcel.cost_to_ship("1 Day", 100)).to(eq("$17.40"))
    }
  }

}
