old_logger = ActiveRecord::Base.logger
ActiveRecord::Base.logger = nil

class Enemy < ActiveRecord::Base

  has_many :battles
  has_many :players, through: :battles

  def initialize(args = {})
    args[:health] ||= 100
    super
  end

end
