class AddLimiteToInvitation < ActiveRecord::Migration
  def change

add_column :invitations, :limite, :boolean

  end
end
