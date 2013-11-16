class CreatePagemembres < ActiveRecord::Migration
  def change
    create_table :pagemembres do |t|

      t.timestamps
    end
  end
end
