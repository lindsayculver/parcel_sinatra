class Parcel
  define_method(:initialize) do |length, height, width|
    @length = length
    @height = height
    @width = width
  end

  define_method(:volume) do
    package_volume = @length * @height * @width
    #@length.*(@height.*(@width))
  end

end
