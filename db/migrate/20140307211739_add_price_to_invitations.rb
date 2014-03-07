class AddPriceToInvitations < ActiveRecord::Migration
  def change

  		add_column :invitations, :gratuit, :boolean
  	    add_column :invitations, :price, :float
  	    add_column :invitations, :tva, :float
  end
end
