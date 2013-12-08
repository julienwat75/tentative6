class CreateWebmasters < ActiveRecord::Migration
  def change
    create_table :webmasters do |t|

      t.timestamps
    end
  end
end
