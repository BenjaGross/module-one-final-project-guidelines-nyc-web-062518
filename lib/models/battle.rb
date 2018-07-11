old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil


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
    # binding.pry
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
        attack(story_hero, enemy)
        enemy_attack(story_hero, enemy)
	    when "block"
	    	puts "BLOCK!"
	      	#yield block

	    when "run"
	    	puts "RUN!"
	    	#yield
	    else
	    	puts "Available commands are attack, block and run. Don't be a dick."
		end
   	  end
   	  if enemy.health <= 0
   	  	puts "ENEMY DEFEATED. YOU ARE THE KING OF THE NORTH"
   	  end
   end


  def attack(story_hero, enemy)
    range_attack = *(1..story_hero.attack)
    enemy.health -= range_attack.sample
  	enemy.save
    puts "HERO deals #{range_attack.sample} damage!"
  end

  def enemy_attack(story_hero, enemy)
    range_attack = *(1..enemy.attack)
  	story_hero.health -= range_attack.sample
  	story_hero.save
    puts "ENEMY deals #{range_attack.sample} damage!"
  end

  def block

  end
end
