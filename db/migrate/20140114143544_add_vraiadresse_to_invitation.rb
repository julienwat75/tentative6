class AddVraiadresseToInvitation < ActiveRecord::Migration
  def change
add_column :invitations, :vraiadresse, :string

  end
end
