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
    it('returns the cost to ship an item for cheetah shipping') {
      parcel = Parcel.new(2,3,4,6)
      expect(parcel.cost_to_ship("Cheetah", 100)).to(eq("$17.40"))
    }

    it('returns the cost to ship an item for chihuahua shipping') {
      parcel = Parcel.new(2,3,4,6)
      expect(parcel.cost_to_ship('Chihuahua', 100)).to(eq('$10.44'))
    }

    it('returns the cost to ship an item for chicken shipping') {
      parcel = Parcel.new(2,3,4,6)
      expect(parcel.cost_to_ship('Chicken', 100)).to(eq('$6.96'))
    }


  }
}
