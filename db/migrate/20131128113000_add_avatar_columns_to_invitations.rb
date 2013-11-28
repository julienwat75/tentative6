class AddAvatarColumnsToInvitations < ActiveRecord::Migration
  def self.up
    add_attachment :invitations, :avatar
  end

  def self.down
    remove_attachment :invitations, :avatar
  end
end
