class CargoTruck
  attr_reader :plate_number, :branding, :odometer
  attr_accessor :driver

  def initialize(plate_number, branding)
    @plate_number = plate_number
    @branding = branding
  end

  def odometer
    0
  end

  def summary
    "#{@branding} truck with plate ##{@plate_number} is driven by #{@driver}."
  end
end


truck = CargoTruck.new('AMZ001', "Amazon")
require 'pry'
binding.pry
