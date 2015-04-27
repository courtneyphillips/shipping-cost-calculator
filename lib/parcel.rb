class Parcel
  define_method(:initialize) do |length, width, height, weight, distance, gift_wrapping|
    @length        = length
    @width         = width
    @height        = height
    @weight        = weight
    @distance      = distance
    @gift_wrapping = gift_wrapping
    @surface_area  = 4 * (length * width) + 2 * (width * height)
  end

  define_method(:volume) do
    @length.*(@width).*(@height)
  end

  define_method(:ship_cost) do
    total = 0
    total += self.volume().*(0.01)
    total += @weight.*(1)
    total += @distance.*(0.01)

    if @gift_wrapping
      total += @surface_area.*(0.01)
    end

    total
 end

end
