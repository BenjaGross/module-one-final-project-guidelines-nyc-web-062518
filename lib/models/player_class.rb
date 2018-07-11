class Player < ActiveRecord::Base

  def initialize(args = {})
    args[:health] ||= 100
    super
  end

#needs a range of attack damage, .sample out of range
  def enter_fight
  while enemy.health > 0

    user_input = gets.chomp

    case user_input

    when "attack"
      yield  attack

    when "block"
      yield block

    end

  def attack
    puts "deals damage!"
  	enemy.health -= 10
  end

has_many :battle
has_many :enemies, through: :battle

end
