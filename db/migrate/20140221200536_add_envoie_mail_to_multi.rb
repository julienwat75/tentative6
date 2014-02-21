class AddEnvoieMailToMulti < ActiveRecord::Migration
  def change
  	add_column :multidates, :envoiemailx, :boolean

  end
end
