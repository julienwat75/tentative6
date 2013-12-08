class CreateSas < ActiveRecord::Migration
  def change
    create_table :sas do |t|

      t.timestamps
    end
  end
end
