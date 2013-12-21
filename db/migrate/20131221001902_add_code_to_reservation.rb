class AddCodeToReservation < ActiveRecord::Migration
  def change
  	  add_column :reservations, :code, :integer
  end
end
