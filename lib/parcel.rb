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

  def weight
    @weight
  end

end
