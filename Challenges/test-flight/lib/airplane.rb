class Airplane
  attr_accessor :type, :wing_loading, :horsepower

  def initialize(type, wing_loading, horsepower)
    @type = type
    @wing_loading = wing_loading
    @horsepower = horsepower
    @started = false
    @in_flight = false
    @landed = false
  end

  def start
    if @started == false
      @started = true
      "Airplane started"
    else
      "Airplane was already started"
    end
  end

  def takeoff
    if @started == false
      "Airplane not started, please start before attempting takeoff"
    elsif @started == true
      if @in_flight == false
        @in_flight = true
        "Airplane launched"
      else
        "Airplane is already in flight"
      end
    end
  end

  def land
    if @in_flight == false
      if @started == false
        "Airplane not started, please start before attempting takeoff or landing"
      else
        "Airplane is already on the ground"
      end
    else
      @in_flight = false
      @landed = true
      "Airplane landed"
    end
  end

end
