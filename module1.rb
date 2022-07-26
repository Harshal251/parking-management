module Parking
    def initialize

        $cars = Hash.new
        
        @AVAILABLE = 3
        @parked = 0 
        startCarParking
    end
    def startCarParking
    
        @slot=3
        while $cars.size <@AVAILABLE

            print "Total #{@slot} Parking space is available right now!\nDo you want to park car [y/n]: \n"
            puts "===================================================================="
            response = gets.chomp.to_s
            @slot-=1

            if response == "y"
                @parked += 1
                puts "Assgined parking no. #{@parked}/#{@AVAILABLE}\nEnter the details below..."
                print "Enter your car no.:"
                car_no = gets.chomp.to_s
                puts "===================================================================="
                $cars[@parked]=car_no
          
              
            else
                puts "Exiting"
                break
            end
            # sleep(1)
            if @parked == @AVAILABLE
                puts "===================================================================="
                puts"PLEASE WAIT WHILE WE CHECK THE SLOTS AVAIBILTY!!"
                sleep(3)
                puts "===================================================================="
                puts "SORRY CAR PARING IS FULL !!"
                puts "===================================================================="
            end

        end
        # sleep(2)
        puts "DO YOU WANT TO REMOVE YOUR CAR:[Y/N]"
        puts "===================================================================="
        res = gets.chomp.upcase()
        if res =="Y"
             def removing_car
                    puts "PLEASE GIVE YOUR PARKING NUMBER: "
                    v= gets.chomp.to_i
                    puts "===================================================================="
                    puts "SUCCESS !! REMOVED CAR AT #{v} SLOT"
                    puts ("CAR NO:"+$cars.delete(v))
                    puts "===================================================================="
            #@AVAILABLE +=1
            puts "SLOTS AVAILABLE FOR PARKING ARE:#{@AVAILABLE -$cars.length}"
            puts "===================================================================="
        end
        else
            puts "THANK YOU FOR USING!!"
    end 
        if $cars.size >@AVAILABLE
            puts "Sorry the parking is not available #{@parked}/#{@AVAILABLE}"
        end
    end  
end