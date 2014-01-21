class AddEmailMembreToReservations < ActiveRecord::Migration
  def change

  	add_column :reservations, :email_membre, :string

  end
end
