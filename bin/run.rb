require_relative '../config/environment'



def run_game
  fake_region = Faker::ElderScrolls.region

  puts "Old Wizard: Welcome to #{fake_region}! Tell me, Young-Adventurer, WHAT is your name!?"
  get_name = gets.chomp.to_s.capitalize

  story_hero = Player.new(:name => get_name)

  puts "Old Wizard: Ahhh, so YOU'RE #{story_hero.name}!"
  puts "Old Wizard: And tell me, #{story_hero.name}, what class are you?"
  get_race = gets.chomp.to_s.capitalize
  puts "Old Wizard: Ahhhh, a #{get_race}"
  puts "Old Wizard: This land has been overrun by enemies of the Dark Lord. (╬ಠ益ಠ)"
  puts "Old Wizard: Will you help us? (yes or no)"

  answer = gets.chomp
 	if answer == "yes"
 		game_loop
 	elsif answer == "no"
 		"Old Wizard: That's a shame...goodbye forever."
 	else
 		"I'm sorry I don't understand"
    run_game
 	end

end


def game_loop
	game_on = true
  while game_on
  	user_command = gets.chomp
  	case user_command
  	when "attack"
  		print "attack!"
  		story_hero.enter_battle
  	when "inventory"
  		#story_hero.inventory
  		print "invenotry!"
  	when "exit"
  		game_on = false
  	end

  end
end

run_game
