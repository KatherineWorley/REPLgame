require_relative 'Messages.rb'

class Inputs
  def self.gatherLeaveStayInput(ls_input = nil) # ************************************BEGIN INPUT FROM USER*******************************
    loop do
      Messages.messageStayOrLeave()
    	ls_input = gets.chomp.downcase

    	if ls_input == "leave" || ls_input == "stay"
    		return ls_input
    	end
    end
  end

  def self.gatherDirection(nsew_input = nil)
    loop do
        puts "Do you going to go travel North(n)(1), South(s)(2), East(e)(3) or West(w)(4)?"
        nsew_input = gets.chomp.downcase

        if ALLOWED_DIRECTIONS.include?(nsew_input)
        	return nsew_input
        end
    end
  end

  def self.gatherNorthInput(north_input = nil) #****************************************** NORTH *****************************
    loop do
    	puts "Do you want to hunkder down in Gainsville? (Yes or No)"
    	north_input = gets.chomp.downcase
    	if ALLOWED_YESNO.include?(north_input)
     	  return north_input
     	end
    end
  end

  def self.gatherEastDirectionOrlando(east_input = nil) #****************************************** EAST *****************************
    loop do
  	  puts "Do you want to hunker down in Orlando? (Yes or No)"
   	  east_input = gets.chomp.downcase
    	if ALLOWED_YESNO.include?(east_input)
    		return east_input
    	end
    end
  end
end
