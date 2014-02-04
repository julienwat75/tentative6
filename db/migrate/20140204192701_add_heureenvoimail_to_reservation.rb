class AddHeureenvoimailToReservation < ActiveRecord::Migration
  def change
  	  add_column :reservations, :heuremailpartenaire, :datetime
  end
end
