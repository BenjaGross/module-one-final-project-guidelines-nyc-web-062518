class Enemy < ActiveRecord::Base

  def initialize(args = {})
    args[:health] ||= 100
    args[:attack] ||= 100
    super
  end

has_many :battles
has_many :players, through: :battles

end
