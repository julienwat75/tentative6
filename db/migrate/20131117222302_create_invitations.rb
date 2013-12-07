class CreateInvitations < ActiveRecord::Migration
  def change
    create_table :invitations do |t|
      t.string :titre
      t.text :description
       t.datetime :dateinvitation
       t.references :author
      t.timestamps
    end
  end
end
