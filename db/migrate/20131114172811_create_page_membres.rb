class CreatePageMembres < ActiveRecord::Migration
  def change
    create_table :page_membres do |t|

      t.timestamps
    end
  end
end
