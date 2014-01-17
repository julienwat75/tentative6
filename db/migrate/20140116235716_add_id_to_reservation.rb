class AddIdToReservation < ActiveRecord::Migration
  def change
  	add_column :reservations, :idinvitation, :integer

  end
end
