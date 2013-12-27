class AddSexeToReservation < ActiveRecord::Migration
  def change

  	add_column :reservations, :pseudo, :string

  	add_column :reservations, :sexe, :string


  end
end
