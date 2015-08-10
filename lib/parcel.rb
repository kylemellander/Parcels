class Parcel
  def initialize(length, width, height, weight)
    @length = length
    @width = width
    @height = height
    @weight = weight
  end

  def volume
    @length.*(@width).*(@height)
  end

  def cost_to_ship(delivery_type, distance)
    if delivery_type.==("1 Day")
      cost = '%.2f' % ((volume().to_f * 0.02 + @weight.to_f() * 0.50) * distance.to_f * 0.05)    
    end
    cost.to_s.prepend("$")
  end

end
