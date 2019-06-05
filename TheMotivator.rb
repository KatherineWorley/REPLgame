require_relative 'Constants.rb'
require_relative 'Messages.rb'

intro()

ls_input = nil
ls_input = gatherLeaveStayInput(ls_input)

if ls_input == "leave"
  messageLeave()
  nsew_input = nil
  nsew_input = gatherDirection(nsew_input)

	if NORTH_DIRECTION.include?(nsew_input)
 		puts "Awesome. You're taking I-75 north."
 		north_input = nil
    north_input = gatherNorthInput(north_input)

 		if YES_OPTIONS.include?(north_input)
      congratsCategory2()
		else
      enjoyYourGoingToGeorgia()
		end

	elsif EAST_DIRECTION.include?(nsew_input)
		puts "You've decided to take I-4"
		east_input = nil
    east_input = gatherEastDirectionOrlando(east_input)

 		if  YES_OPTIONS.include?(east_input)
      congratsOrlandoCategory2()
		else
      enjoyYourGoingToGeorgia()
		end

	elsif SOUTH_DIRECTION.include?(nsew_input)
    badMoveFloodedCarAndCategory4()

  else
    westIsTheGulfOfMexico()
	end

else
  youChoseToStay()
end

