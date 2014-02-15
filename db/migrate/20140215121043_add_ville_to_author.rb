class AddVilleToAuthor < ActiveRecord::Migration
  def change

  	add_column :authors, :date_naissance, :integer
  	add_column :authors, :ville, :string
  end
end
