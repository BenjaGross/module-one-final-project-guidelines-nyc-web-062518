class Player < ActiveRecord::Base

  def initialize(args = {})
    args[:health] ||= 100
    super
  end


  def attack
  	
  end

has_many :battle
has_many :enemies, through: :battle

end