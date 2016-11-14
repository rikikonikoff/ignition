require_relative "../../lib/airplane"

describe Airplane do

  let(:my_plane) {my_plane = Airplane.new("cesna", 10, 150)}

  describe "#initialization" do
    it "returns the type argument" do
      expect(my_plane.type).to eq("cesna")
    end

    it "returns the wing_loading argument" do
      expect(my_plane.wing_loading).to eq(10)
    end

    it "returns the horsepower argument" do
      expect(my_plane.horsepower).to eq(150)
    end
  end

  describe "#start" do
    context "if this is the first time calling the start method" do
      it "tells the user that the airplane started" do
        expect(my_plane.start).to eq("Airplane started")
      end
    end

    context "if the start method has already been called" do
      it "tells the user that the airplane was already started" do
        my_plane.start
        expect(my_plane.start).to eq("Airplane was already started")
      end
    end
  end

  describe "#land" do
    context "if the plane has not yet taken off" do
      context "if the plane has not yet been started" do
        it "tells the user that the plane must be started before takeoff and landing" do
          expect(my_plane.land).to eq("Airplane not started, please start before attempting takeoff or landing")
        end
      end
      context "if the plane has been started" do
        it "tells the user that the plane isn't airborne" do
          my_plane.start
          expect(my_plane.land).to eq("Airplane is already on the ground")
        end
      end
    end

    context "if the plane is airborne" do
      it "tells the user that the airplane has now landed" do
        my_plane.start
        my_plane.takeoff
        expect(my_plane.land).to eq("Airplane landed")
      end
    end

    context "if the plane had already landed" do
      it "tells the user that the plane had already landed" do
        my_plane.start
        my_plane.takeoff
        my_plane.land
        expect(my_plane.land).to eq("Airplane is already on the ground")
      end
    end
  end

  describe "#takeoff" do
    context "if the plane has not yet taken off" do

      context "if the plane has not yet been started" do
        it "returns that the plane needs to be started before taking off" do
          expect(my_plane.takeoff).to eq("Airplane not started, please start before attempting takeoff")
        end
      end

      context "if the plane has been started" do
        it "returns that the airplane has now launched" do
          my_plane.start
          expect(my_plane.takeoff).to eq("Airplane launched")
        end
      end
    end

    context "if the plane had already taken off" do
      it "tells the user the plane is already in the air" do
        my_plane.start
        my_plane.takeoff
        expect(my_plane.takeoff).to eq("Airplane is already in flight")
      end
    end

  end


end
