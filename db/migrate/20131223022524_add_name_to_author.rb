class AddNameToAuthor < ActiveRecord::Migration
  def change

  	add_column :authors, :nom_resa, :string

  end
end
