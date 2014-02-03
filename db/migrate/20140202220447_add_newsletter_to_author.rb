class AddNewsletterToAuthor < ActiveRecord::Migration
  def change

  	add_column :authors, :newsletter, :boolean
  	add_column :authors, :partenaires, :boolean
  end
end
