class AddVraiadresseToReservation < ActiveRecord::Migration
  def change
  	add_column :reservations, :vraiadresse, :string
  end
end
