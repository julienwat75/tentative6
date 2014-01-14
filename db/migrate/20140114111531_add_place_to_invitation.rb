class AddPlaceToInvitation < ActiveRecord::Migration
  def change

  	add_column :invitations, :place, :string
end


end
