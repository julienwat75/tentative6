class AddAdresseToInvitation < ActiveRecord::Migration
  def change

  	 add_column :invitations, :adresse, :text
  end
end
