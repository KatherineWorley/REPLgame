
# ************************************INTRO TEXT*******************************
puts " "* 10 + "*" *5
puts "  "
puts "Welcome to Tampa Bay! Home of sugar white sand, pirates,"
puts "CentCom and the Sunshine Skyway."
`say -v "Alex" "Welcome to Tampa Bay! Home of sugar white sand, pirates, CentCom and the Sunshine Skyway." `
5.times do
	sleep 1
	print "        ."
end
puts "  "
sleep 2
puts " "
puts "You just moved to beautiful Tampa Bay and are deciding"
puts "if you are going to leave due to Hurricane Irma!"
`say -v "Alex" "You just moved to beautiful Tampa Bay and are deciding if you are going to leave due to Hurricane Irma!" `
sleep 2

puts " "
   


puts " "
puts "Currently she is on track to be a direct hit to Florida,"
puts "but all of the weather people are projecting the spaghetti"
puts "models to cover the entire state."
`say -v "Alex" "Currently she is on track to be a direct hit to Florida, but all of the weather people are projecting the spaghetti models to cover the entire state." `
puts  " "
puts "What are you going to do?"
`say -v "Alex" "What are you going to do?"`
puts  " "
sleep 2

# ************************************VARIABLES*******************************

NORTH_DIRECTION = ["n", "1", "north"].freeze
SOUTH_DIRECTION = ["s", "2", "south"].freeze
EAST_DIRECTION 	= ["e", "3", "east"].freeze
WEST_DIRECTION 	= ["w", "4", "west"].freeze
ALLOWED_DIRECTIONS = [NORTH_DIRECTION, SOUTH_DIRECTION, EAST_DIRECTION, WEST_DIRECTION].flatten.freeze
YES_OPTIONS = ["y", "yes", "1"].freeze
NO_OPTIONS = ["n", "no", "2"].freeze
ALLOWED_YESNO = [YES_OPTIONS, NO_OPTIONS].flatten.freeze

# ************************************BEGIN INPUT FROM USER*******************************

ls_input = nil
loop do
	puts "Are you going to Stay or Leave?"
	`say -v "Alex" "Are you going to Stay or Leave?"`

	ls_input = gets.chomp.downcase

	if ls_input == "leave" || ls_input == "stay"
		break 
	end
end 


if ls_input == "leave"

	puts " "
	puts "Smooth move. Better to be safe then sorry."
	puts " "
	`say -v "Alex" "Smooth move. Better to be safe then sorry."`

    nsew_input = nil 
	loop do 
	    puts "Do you going to go travel North(n)(1), South(s)(2), East(e)(3) or West(w)(4)?"
	    nsew_input = gets.chomp.downcase

	    if ALLOWED_DIRECTIONS.include?(nsew_input)
	    	break
	    end 
	end 

#****************************************** NORTH *****************************

	if NORTH_DIRECTION.include?(nsew_input)
 		puts "Awesome. You're taking I-75 north."
 		north_input = nil 
 		loop do 
	 		puts "Do you want to hunkder down in Gainsville? (Yes or No)"
	 		north_input = gets.chomp.downcase
	 		if ALLOWED_YESNO.include?(north_input)
	    		break
	    	end 
		end
 		
 		if  YES_OPTIONS.include?(north_input)
 			puts "You're safe from storm surge, but got one heck of a lashing." 
 			puts "Congratuations, you survived a Cat 2 hurricane! Celebrate"
 			puts "with a beer at The Swamp."
 			`say -v "Alex" "You're safe from storm surge, but got one heck of a lashing. Congratuations, you survived a Cat 2 hurricane! Celebrate with a beer at The Swamp."`

		else 
			puts "You're going to Georgia! Grab a peach and some sweet tea!"
			puts "Keep going as far North as you can until you find an open" 
			puts "hotel! Don't come back until it's clear."
            `say -v "Alex" "You're going to Georgia! Grab a peach and some sweet tea! Keep going as far North as you can until you find an open hotel! Don't come back until it's clear."`

		end  

#****************************************** EAST *****************************

	elsif EAST_DIRECTION.include?(nsew_input)
		puts "You've decided to take I-4"
		east_input = nil 
 		loop do 
			puts "Do you want to hunker down in Orlando? (Yes or No)"
			east_input = gets.chomp.downcase
	 		if ALLOWED_YESNO.include?(east_input)
	    		break
	    	end 
	    end

 		if  YES_OPTIONS.include?(east_input)
 			puts "You're safe from storm surge, but got one heck of a lashing." 
 			puts "Congratuations, you survived a Cat 2 hurricane! Celebrate"
 			puts "with a trip to Disney."
 			`say -v "Alex" "You're safe from storm surge, but got one heck of a lashing. Congratuations, you survived a Cat 2 hurricane! Celebrate with a trip to Disney."`


		else 
			puts "You're going to Georgia! Grab a peach and some sweet tea!"
			puts "Keep going as far North as you can until you find an open" 
			puts "hotel! Don't come back until it's clear."
            `say -v "Alex" "You're going to Georgia! Grab a peach and some sweet tea! Keep going as far North as you can until you find an open hotel! Don't come back until it's clear."`

		end

#******************************************SOUTH ***********************************

	elsif SOUTH_DIRECTION.include?(nsew_input)
		puts "Bad move. You just walked into a Cat 4 Hurricane."
		puts "Gas is sparce and everyone is mad." 
		puts "Oh yeah, and your car flooded."
        `say -v "Alex" "Bad move. You just walked into a Cat 4 Hurricane. Gas is sparce and everyone is mad. Oh yeah, and your car flooded."`

#****************************************** ELSE/WEST ******************************

	else 
		puts "If you REALLY want to go West, you'll end up in the Gulf of Mexico." 
		puts "Although beautiful on a normal, non-hurricane day, it's not the best option."
		puts "The Motivator advises against this option."
        `say -v "Alex" "If you REALLY want to go West, you'll end up in the Gulf of Mexico. Although beautiful on a normal, non-hurricane day, it's not the best option. The Motivator advises against this option."`
	end


#****************************************** END OPTION *****************************

else 
	p "You surived 70+ mph winds, but were scared. Build an evacuaton plan."
	`say -v "Alex" "You surived 70+ mile per hour winds, but were scared. Build an evacuaton plan." `
end 

