class Parcel
  def initialize(length, width, height, weight)
    @length = length.to_f
    @width = width.to_f
    @height = height.to_f
    @weight = weight.to_f
  end

  def volume
    @length.*(@width).*(@height)
  end

  def cost_to_ship(delivery_type, distance)
    if delivery_type.==("Cheetah")
      cost = '%.2f' % ((volume() * 0.02 + @weight * 0.50) * distance.to_f() * 0.05)
    elsif delivery_type == "Chihuahua"
      cost = '%.2f' % ((volume * 0.02 + @weight * 0.50) * distance.to_f() * 0.03)
    elsif delivery_type == "Chicken"
      cost = '%.2f' % ((volume * 0.02 + @weight * 0.50) * distance.to_f() * 0.02)
    end
    cost.to_s.prepend("$")
  end
end
