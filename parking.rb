
require_relative"module1.rb"
puts "<<<<<<<<<<<<<<<<<<<<<< PARKING MANAGEMENT SYSTEM >>>>>>>>>>>>>>>>>>>>>>>>>>"
print"\n"
class Cars
include Parking
include Printer
end
X=Cars.new()
X.removing_car
puts "DETAILS OF PARKED CARS ARE :"
$cars.each { |s,m| puts "#{s}: #{m}"}
X.pLines
puts "THANK YOU FOR USING !!\nHAVE A NICE DAY!!"
