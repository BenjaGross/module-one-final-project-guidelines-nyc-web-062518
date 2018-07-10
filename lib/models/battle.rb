class Battle < ActiveRecord::Base

has_many :enemies
has_many :players

end
