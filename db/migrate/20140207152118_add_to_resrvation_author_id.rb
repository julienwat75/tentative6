class AddToResrvationAuthorId < ActiveRecord::Migration
  def change

  	 add_column :reservations, :author_id, :integer
  end
end
