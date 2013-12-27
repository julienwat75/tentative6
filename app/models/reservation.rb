class Reservation < ActiveRecord::Base

belongs_to :author

attr_accessible :nombreinvitations,:pseudo


end
