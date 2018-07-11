class Player < ActiveRecord::Base

  def initialize(args = {})
    args[:health] ||= 100
    super
  end

  def get_random_enemy
    Enemy.order("RANDOM()").first(1)[0]
  end


  def enter_battle
  	 enemy = get_random_enemy
  	 player_enemey_battle = Battle.create(player_id: self.id, enemy_id: enemy.id)
  end



has_many :battles
has_many :enemies, through: :battles

end
