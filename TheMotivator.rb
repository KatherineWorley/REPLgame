require_relative 'Constants.rb'
require_relative 'Messages.rb'
require_relative 'Inputs.rb'

Messages.intro()

ls_input = nil
ls_input = Inputs.gatherLeaveStayInput(ls_input)

if ls_input == "leave"
  Messages.messageLeave()
  nsew_input = nil
  nsew_input = Inputs.gatherDirection(nsew_input)

	if NORTH_DIRECTION.include?(nsew_input)
 		puts "Awesome. You're taking I-75 north."
 		north_input = nil
    north_input = Inputs.gatherNorthInput(north_input)

 		if YES_OPTIONS.include?(north_input)
      Messages.congratsCategory2()
		else
      Messages.enjoyYourGoingToGeorgia()
		end

	elsif EAST_DIRECTION.include?(nsew_input)
		puts "You've decided to take I-4"
		east_input = nil
    east_input = Inputs.gatherEastDirectionOrlando(east_input)

 		if  YES_OPTIONS.include?(east_input)
      Messages.congratsOrlandoCategory2()
		else
      Messages.enjoyYourGoingToGeorgia()
		end

	elsif SOUTH_DIRECTION.include?(nsew_input)
    Messages.badMoveFloodedCarAndCategory4()

  else
    Messages.westIsTheGulfOfMexico()
	end

else
  Messages.youChoseToStay()
end

