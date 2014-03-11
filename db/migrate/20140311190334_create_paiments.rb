class CreatePaiments < ActiveRecord::Migration
  def change
    create_table :paiments do |t|

     t.integer  :charge_id
     t.integer  :prix_ht
     t.integer  :prix_ttc
     t.integer  :nombre
     t.string  :titre
     t.datetime  :date1
     t.string  :nom
     t.string  :prenom
     t.string  :adresse
     t.string  :postal
     t.string  :ville
     t.references :author
	 t.timestamps
    end
  end
end
