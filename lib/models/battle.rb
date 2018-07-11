class Battle < ActiveRecord::Base

	belongs_to :enemy
	belongs_to :player

	def battlefield
		story_hero = Player.find_by(id: self.player_id)
		enemy = Enemy.find_by(id: self.enemy_id)
		enter_fight(story_hero, enemy)
	end

  #needs a range of attack damage, .sample out of range
  def enter_fight(story_hero, enemy)
	  while enemy.health > 0

	  	puts "==============BATTLE================="
	  	puts "Player health: #{story_hero.health}"
	  	puts "Enemy health: #{enemy.health}"
	  	puts "====================================="
	  	puts " "
	  	puts "Battle Commands:"
	  	puts "attack"
	  	puts "block"
	  	puts "run"

	  	user_input = gets.chomp

	    case user_input

	    when "attack"
	    	yield attack

	    when "block"
	    	puts "BLOCK!"
	      	#yield block

	    when "run"
	    	puts "RUN!"
	    	#yield
	    else
	    	yield "Available commands are attack, block and run. Don't be a dick."
		end
   	  end
   end


  def attack
    puts "deals damage!"
  	enemy.health -= story_hero.attack
  	enemy.save
  end

  def block

  end

end
