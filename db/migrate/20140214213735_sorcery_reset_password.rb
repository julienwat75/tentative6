class SorceryResetPassword < ActiveRecord::Migration
  def self.up
    add_column :authors, :reset_password_token, :string, :default => nil
    add_column :authors, :reset_password_token_expires_at, :datetime, :default => nil
    add_column :authors, :reset_password_email_sent_at, :datetime, :default => nil
    
    add_index :authors, :reset_password_token
  end

  def self.down
    remove_index :authors, :reset_password_token
    
    remove_column :authors, :reset_password_email_sent_at
    remove_column :authors, :reset_password_token_expires_at
    remove_column :authors, :reset_password_token
  end
end