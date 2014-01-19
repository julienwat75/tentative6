class AddLimiteToAuthor < ActiveRecord::Migration
  def change

  	add_column :authors, :limite, :boolean
  end
end
