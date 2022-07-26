module Printer
    def pLines
        for i in 0..61
            print "="
            sleep(0.008)  
        end
        print "\n"
    end
end

module Parking
  include Printer
  def initialize

        $cars = Hash.new
        puts "ENTER NUMBER OF SLOTS YOU WANT!! "
        @AVAILABLE = gets.chomp.to_i
        @parked = 1 
        startCarParking
    end
    def startCarParking
    
        @slot=@AVAILABLE
        while $cars.size <@AVAILABLE

            print "Total #{@slot} Parking space is available right now!\nDo you want to park car [y/n]: \n".upcase()
            pLines
               
            response = gets.chomp.to_s.upcase()
            pLines
            if response == "Y" 
                puts "Assgined parking no. #{@parked}/#{@AVAILABLE}\nEnter the details below...".upcase()
                print "Enter your car no.:".upcase()
                car_no = gets.chomp.to_s
                pLines
                if $cars.has_value?(car_no)
                puts "SORRY THE CAR IS ALREADY PARKED!!"
                pLines
                else
                  
                  $cars[@parked]=car_no  
                  @slot-=1 
                  @parked += 1
                end            
            else
                puts "Exiting".upcase()
                break
            end
            if @parked-1 == @AVAILABLE
                puts"PLEASE WAIT WHILE WE CHECK THE SLOTS AVAIBILTY!!"
                sleep(0.5)
                pLines
                puts "SORRY CAR PARkING IS FULL !!"
                pLines   
            end

        end
        puts "DO YOU WANT TO REMOVE YOUR CAR:[Y/N]"
        pLines
        res = gets.chomp.upcase()
        pLines
        if res =="Y"
             def removing_car
                    puts "PLEASE GIVE YOUR PARKING NUMBER: "
                    v= gets.chomp.to_i
                    if  @parked!=0 && $cars.has_key?(v)
                    pLines
                    puts "SUCCESS !! REMOVED CAR AT #{v} SLOT"
                    puts ("CAR NO:"+$cars.delete(v))
                    else
                        puts "ENTER VALID SLOT NUMBER!!"
                        end
                    pLines
            #@AVAILABLE +=1
            puts "SLOTS AVAILABLE FOR PARKING ARE:#{@AVAILABLE -$cars.length}"
           pLines
        end
        else
            puts "THANK YOU FOR USING!!"
    end 
       
    end  
end