class AddChargeIdToPaiment < ActiveRecord::Migration
  def change
  	add_column :paiments, :charge_id2, :string
  end
end
