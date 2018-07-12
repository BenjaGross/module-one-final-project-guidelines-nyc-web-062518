require_relative '../config/environment'
# Player.destroy_all
# Battle.destroy_all
# Enemy.destroy_all


def run_game
font = TTY::Font.new(:doom)
puts "                                    ... Welcome to ...                                    "
puts font.write("NOT Final Fantasy")
puts "                        A super simple CLI Adventure by Sean & Tony\n\n                          "
  sleep(3)
  game_loop(story_prologue)
end


def story_prologue
  pastel = Pastel.new
  fake_region = Faker::ElderScrolls.region

  puts "OLD WIZARD: Welcome, Adventurer, to the land of  #{fake_region}. These are DARK TIMES, to be sure. The gates of HELL itself have opened and the land has become INFESTED with ENEMIES of the LIGHT."
  puts " "
  sleep(2)

  puts "OLD WIZARD: We are FOREVER indebted to you for agreeing to rid these ONCE fair lands of the EVIL that resides within them. Please tell me, what should we call you?"
  puts " "

  get_name = gets.chomp.to_s.capitalize

  story_hero = Player.create(:name => get_name)

  puts " "
  sleep(2)
  puts "OLD WIZARD: *GASP*"
  puts " "

  sleep(2)
  puts pastel.yellow("#{story_hero.name}!")
  puts " "

  sleep(2)

  puts "The LEGENDS are TRUE! The HERO OF OLD is REBORN!"
  puts " "

  sleep(2)
  puts "Please, #{story_hero.name}, You must HELP US!"
  puts " "

  sleep(2)
  # puts "OLD WIZARD: And tell me, #{story_hero.name}, what class are you?"
  # get_race = gets.chomp.to_s.capitalize

  # story_hero = :race => get_race)

  # puts "OLD WIZARD: Ahhhh, a #{story_hero.race}"

  # puts pastel.red('Unicorns!')
  #
  # puts pastel.red.on_green.bold('Unicorns!')
  # story_hero
  end


def game_loop(story_hero)
  game_on = true
  prompt = TTY::Prompt.new
  while game_on

    puts "OLD WIZARD: By the MAKER! A FIEND approaches this very MOMENT!!"
    sleep(2)
    puts " "
    puts "    (╬ಠ益ಠ) <- Evil Demon    "
    puts " "
    # puts "Available Commands:"
    puts "-------------------------------------\n"
    # puts "Fight"
    # puts "Inventory"
    # puts "Run"
    user_command = prompt.select("Commands:", %w(Fight Inventory Exit))

    case user_command
      when "Fight"
        puts "The FIGHT begins! Prepare yourself\n\n"
        enter_fight
      when "Inventory"
        #story_hero.inventory
        puts "Inventory Empty :-(. We have not built that function yet"
      when "Exit"
        game_on = false
    end

  end
end








  run_game
