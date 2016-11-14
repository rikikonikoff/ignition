class Circle
  attr_reader :radius

  def initialize(measurement)
    if measurement[:radius].nil?
      @radius = measurement[:diameter] / 2
    else
      @radius = measurement[:radius]
    end
  end
end
