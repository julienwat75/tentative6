class Reservation < ActiveRecord::Base

belongs_to :invitation

attr_accessible :nombreinvitations,:pseudo

def self.late(dates)
    DateTime.now < dates
  end


end
