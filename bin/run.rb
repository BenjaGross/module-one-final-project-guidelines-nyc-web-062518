require_relative '../config/environment'

game_on = true

def run_game
  fake_region = Faker::ElderScrolls.region

  puts "Old Wizard: Welcome to #{fake_region}! Tell me, Young-Adventurer, WHAT is your name!?"
  get_name = gets.chomp.to_s.capitalize

  story_hero = Player.new(:name => get_name , :race => "Wizard")

  puts "Old Wizard: Ahhh, so YOU'RE #{story_hero.name}!"
  puts "This land has been overrun by enemies of the Dark Lord. >:("

  # game_loop
end


def game_loop
  while game_on

  end
end

run_game
