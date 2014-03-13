class AddPrixUnitaireToPaiment < ActiveRecord::Migration
  def change
  	add_column :paiments, :prix_unitaire, :integer
  end
end
