class AddHeureemailToInvitation < ActiveRecord::Migration
  def change

  	add_column :invitations, :envoiemail, :boolean
  	add_column :invitations, :heuremailpartenaire, :datetime

  end
end
