class CreateMailgenerals < ActiveRecord::Migration
  def change
    create_table :mailgenerals do |t|
      t.string :titre	
      t.text :body
      t.datetime :datemail
      t.boolean :envoigeneral
      t.string :maildestinataire
      t.timestamps


    end
  end
end
