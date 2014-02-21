class CreateMultidates < ActiveRecord::Migration
  def change
    create_table :multidates do |t|

      t.datetime  :datex
      t.integer    :placex
      t.datetime :heuremailpartenaire
      t.boolean :envoiemailx
      t.references :invitation

      t.timestamps
    end
  end
end
