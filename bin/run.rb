require_relative '../config/environment'

def run_game
  fake_region = Faker::ElderScrolls.region
  puts "Welcome to #{fake_region}! Tell me, young adventurer, WHAT is your name!?"
  get_name = gets.chomp.to_s.capitalize

  story_hero = Player.new(:name => get_name , :race => "Wizard")
end

run_game
