require_relative '../config/environment'
# Player.destroy_all
# Battle.destroy_all
# Enemy.destroy_all


def run_game
  game_loop(story_prologue)

end


def story_prologue

  # Loading bar
  spinner = TTY::Spinner.new("[:spinner] Connecting to database ...", format: :bouncing)
  spinner.auto_spin # Automatic animation with default interval
  sleep(3) # Perform task
  spinner.stop('Done!') # Stop animation
  spinner = TTY::Spinner.new("[:spinner] Adding kittens ...", format: :bouncing)
  spinner.auto_spin # Automatic animation with default interval
  sleep(3)
  spinner.stop('Done!')
  spinner = TTY::Spinner.new("[:spinner] Adding memes ...", format: :bouncing)
  spinner.auto_spin # Automatic animation with default interval
  sleep(3)
  spinner.stop('Done!')
  spinner = TTY::Spinner.new("[:spinner] Opening world ...", format: :bouncing)
  spinner.auto_spin # Automatic animation with default interval
  sleep(2)
  spinner.stop('Done!')

  fake_region = Faker::ElderScrolls.region

  puts "Old Wizard: Welcome to #{fake_region}! Tell me, Young-Adventurer, WHAT is your name!?"

  get_name = gets.chomp.to_s.capitalize

  story_hero = Player.create(:name => get_name)
  sleep(2)
  puts "Old Wizard: Ahhh, so YOU'RE #{story_hero.name}!"
  sleep(2)

  # puts "Old Wizard: And tell me, #{story_hero.name}, what class are you?"
  # get_race = gets.chomp.to_s.capitalize

  # story_hero = :race => get_race)

  # puts "Old Wizard: Ahhhh, a #{story_hero.race}"

  puts "Old Wizard: This land has been overrun by enemies of the Dark Lord. (╬ಠ益ಠ)"
  sleep(2)

  puts "Old Wizard: We need your help!"
  sleep(2)

  story_hero
end


def game_loop(hero)
  game_on = true
  prompt = TTY::Prompt.new
  while game_on
    puts "Old Wizard: OMG! An wild enemy appears!"
    # puts "Available Commands:"
    puts "-------------------------------------\n"
    # puts "Fight"
    # puts "Inventory"
    # puts "Run"
    user_command = prompt.select("Commands:", %w(Fight Inventory Exit))


    # user_command = gets.chomp.downcase
    case user_command
    when "Fight"
      print "The battle has begun!\n\n"
      hero.enter_battle
    when "Inventory"
      #story_hero.inventory
      print "Inventory Empty :-("
    when "Exit"
      game_on = false
    end

  end
end








  run_game
