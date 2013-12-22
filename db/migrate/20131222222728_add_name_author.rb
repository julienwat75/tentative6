class AddNameAuthor < ActiveRecord::Migration
  def change

  	 add_column :authors, :nom, :string
  	 add_column :authors, :prenom, :string
  	 add_column :authors, :sexe, :string
  end
end
