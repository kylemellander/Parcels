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

  def surface_area
    2 * ((@length * @width) + (@length * @height) + (@width * @height))
  end

  def cost_to_ship(delivery_type, distance, gift_wrap=0)
    if delivery_type.==("Cheetah")
      cost = ((volume() * 0.02 + @weight * 0.50) * distance.to_f() * 0.05)
    elsif delivery_type == "Chihuahua"
      cost = ((volume * 0.02 + @weight * 0.50) * distance.to_f() * 0.03)
    elsif delivery_type == "Chicken"
      cost = ((volume * 0.02 + @weight * 0.50) * distance.to_f() * 0.02)
    end
    if gift_wrap == 1
      cost += (surface_area().to_f * 0.05)
    end
    ('%.2f' % cost).to_s.prepend("$")
  end
end
