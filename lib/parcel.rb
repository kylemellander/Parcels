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
    if delivery_type.==("Cheetah")
      cost = '%.2f' % ((volume().to_f * 0.02 + @weight.to_f() * 0.50) * distance.to_f() * 0.05)
    elsif delivery_type == "Chihuahua"
      cost = '%.2f' % ((volume.to_f() * 0.02 + @weight.to_f() * 0.50) * distance.to_f() * 0.03)
    elsif delivery_type == "Chicken"
      cost = '%.2f' % ((volume.to_f() * 0.02 + @weight.to_f() * 0.50) * distance.to_f() * 0.02)
    end
    cost.to_s.prepend("$")
  end
end
