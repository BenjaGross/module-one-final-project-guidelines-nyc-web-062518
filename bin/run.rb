require_relative '../config/environment'


def run_game
  game_loop(story_prologue)

end


def story_prologue
  fake_region = Faker::ElderScrolls.region

  puts "Old Wizard: Welcome to #{fake_region}! Tell me, Young-Adventurer, WHAT is your name!?"

  get_name = gets.chomp.to_s.capitalize

  story_hero = Player.create(:name => get_name)

  puts "Old Wizard: Ahhh, so YOU'RE #{story_hero.name}!"

  # puts "Old Wizard: And tell me, #{story_hero.name}, what class are you?"
  # get_race = gets.chomp.to_s.capitalize

  # story_hero = :race => get_race)

  # puts "Old Wizard: Ahhhh, a #{story_hero.race}"

  puts "Old Wizard: This land has been overrun by enemies of the Dark Lord. (╬ಠ益ಠ)"
  puts "Old Wizard: We need your help!"
  story_hero
end


def game_loop(hero)
  game_on = true
  while game_on
    puts "Old Wizard: OMG! An wild enemy appears!"
    puts "Available Commands:"
    puts "-------------------------------------\n"
    puts "Fight"
    puts "Inventory"
    puts "Run"
    
    user_command = gets.chomp.downcase
    case user_command
    when "fight"
      print "The battle has begun!\n\n"
      hero.enter_battle
    when "inventory"
      #story_hero.inventory
      print "invenotry!"
    when "exit"
      game_on = false
    end

  end
end








  run_game
