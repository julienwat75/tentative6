class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
       t.integer :nombreinvitations
       t.integer :user_id
       t.string  :user_nom
       t.string  :titre 
       t.string  :adresse
       t.datetime  :dateinvitation   
       t.timestamps
    end
  end
end
