class AddTokenToAuthor < ActiveRecord::Migration
  def change
  	add_column :authors, :token, :string 
  end
end
