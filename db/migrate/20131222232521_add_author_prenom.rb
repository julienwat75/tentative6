class AddAuthorPrenom < ActiveRecord::Migration
  def change

  	add_column :reservations, :author_prenom, :string

  end
end
