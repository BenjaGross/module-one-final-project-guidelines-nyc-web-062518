class Player < ActiveRecord::Base

  def initialize(args = {})
    args[:health] ||= 100
    super
  end

  def get_random_enemy
    Enemy.order("RANDOM()").first(1)
  end


  def enter_battle
  	 player_enemey_battle = Battle.new(self, get_random_enemy)

  end



has_many :battle
has_many :enemies, through: :battle

end
