class AddEmailPartenaireToInvitation < ActiveRecord::Migration
  def change

  	add_column :invitations, :emailpartenaire, :string
    add_column :reservations, :emailpartenaire, :string 
    add_column :reservations, :envoiemail, :boolean
  end
end
