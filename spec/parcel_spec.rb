require 'rspec'
require 'parcel'

describe(Parcel) {
  describe('#volume') {
    it('returns volume of parcel') {
      parcel = Parcel.new(2,3,4,6)
      expect(parcel.volume).to(eq(24))
    }
  }

  describe('#weight') {
    it('returns weight of the parcel') {
      parcel = Parcel.new(2,3,4,6)
      expect(parcel.weight).to(eq(6))
    }
  }

}
