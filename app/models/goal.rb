class Goal < ActiveRecord::Base
	has_many :requesters
end
