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
    puts "Old Wizard: OMG! An wild enemy appears!"
    puts " "
    sleep(2)
	  while enemy.health > 0

	  	puts "==============BATTLE================="
	  	puts "Enemy health: #{enemy.health}"
	  	puts "Player health: #{story_hero.health}"
	  	puts "====================================="
	  	puts " "
	  	sleep(2)
	  	puts "Battle Commands:"
	  	puts "attack"
	  	puts "block"
	  	puts "run"
	  	puts " "
	  	user_input = gets.chomp
	  	puts " "
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
	    	puts " "
		end
   	  end
   	  if enemy.health <= 0
   	  	puts "ENEMY DEFEATED. YOU ARE THE KING OF THE NORTH"
   	  	puts " "
   	  end
   end


  def attack(story_hero, enemy)
    range_attack = *(1..story_hero.attack)
    rand_attack_num = range_attack.sample
    enemy.health -= rand_attack_num
  	enemy.save
    puts "HERO deals #{rand_attack_num} damage!"
    sleep(2)
  end

  def enemy_attack(story_hero, enemy)
    range_attack = *(1..enemy.attack)
    rand_attack_num = range_attack.sample
  	story_hero.health -= rand_attack_num
  	story_hero.save
    puts "ENEMY deals #{rand_attack_num} damage!"
    puts " "
    sleep(2)
  end

  def block

  end
end
