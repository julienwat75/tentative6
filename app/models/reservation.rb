class Reservation < ActiveRecord::Base

belongs_to :author

attr_accessible :nombreinvitations,:pseudo

def self.late(dates)
    DateTime.now < dates
  end


end
