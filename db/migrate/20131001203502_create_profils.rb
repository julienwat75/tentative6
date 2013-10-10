class CreateProfils < ActiveRecord::Migration
  def change
    create_table :profils do |t|
      t.string :nom
       t.text :body
      t.timestamps
    end
  end
end
