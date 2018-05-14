class Power < ActiveRecord::Base

	has_many :alien_powers
	has_many :powers, through: :alien_powers
	
end
