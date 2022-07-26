module Printer
    def pLines
        for i in 0..61
            print "="
            sleep(0.01)  
        end
        print "\n"
    end
end

module Parking
    include Printer
    def initialize

        $cars = Hash.new
        
        @AVAILABLE = 3
        @parked = 0 
        startCarParking
    end
    def startCarParking
    
        @slot=3
        while $cars.size <@AVAILABLE

            print "Total #{@slot} Parking space is available right now!\nDo you want to park car [y/n]: \n".upcase()
            pLines
               
            response = gets.chomp.to_s.upcase()
            pLines
            @slot-=1

            if response == "Y"
                @parked += 1
                puts "Assgined parking no. #{@parked}/#{@AVAILABLE}\nEnter the details below...".upcase()
                print "Enter your car no.:".upcase()
                car_no = gets.chomp.to_s
             pLines
               $cars[@parked]=car_no   
            else
                puts "Exiting".upcase()
                break
            end
            if @parked == @AVAILABLE
                puts"PLEASE WAIT WHILE WE CHECK THE SLOTS AVAIBILTY!!"
                sleep(0.8)
                pLines
                puts "SORRY CAR PARING IS FULL !!"
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
                    if v<=@AVAILABLE
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