class CreatePageinvitations < ActiveRecord::Migration
  def change
    create_table :pageinvitations do |t|

      t.timestamps
    end
  end
end
