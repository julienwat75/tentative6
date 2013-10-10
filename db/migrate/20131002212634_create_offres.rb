class CreateOffres < ActiveRecord::Migration
  def change
    create_table :offres do |t|
      t.string :nom
       t.text :body
      t.timestamps
    end
  end
end
