class AddPriceToMultidates < ActiveRecord::Migration
  def change

  		add_column :multidates, :gratuit, :boolean
  	    add_column :multidates, :price, :float
  	    add_column :multidates, :tva, :float
  end
end
