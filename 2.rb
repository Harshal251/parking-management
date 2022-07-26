require_relative"module1.rb"
class Cars
include Parking
end
X=Cars.new()
X.removing_car
puts "DETAILS OF PARKED CARS ARE :"
puts $cars