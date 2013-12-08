class AddValidationInvitations < ActiveRecord::Migration
  def change
          add_column :invitations, :validation, :boolean
  end
end
