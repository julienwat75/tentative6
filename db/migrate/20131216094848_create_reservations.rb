class CreateReservations < ActiveRecord::Migration
  def change
    create_table :reservations do |t|
       t.integer :nombreinvitations
       t.string  :titre 
       t.string  :adresse
       t.datetime  :dateinvitation 
       t.string  :author_nom   
       t.references :invitation, index: true
       t.timestamps
    end
  end
end
