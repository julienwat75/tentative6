class CreateCommentaires < ActiveRecord::Migration
  def change
    create_table :commentaires do |t|
      t.string :author_name
      t.text :body
      t.references :author, index: true

      t.timestamps
    end
  end
end
