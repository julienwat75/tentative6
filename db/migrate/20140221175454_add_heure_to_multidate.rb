class AddHeureToMultidate < ActiveRecord::Migration
  def change

  	add_column :multidates, :heuremailpartenaire, :datetime

  end
end
