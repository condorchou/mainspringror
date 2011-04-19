class AddUserRoleAndPasswordAttributes < ActiveRecord::Migration
  def self.up
    add_column :users, :password, :string
    add_column :users, :role, :string, :default => 'intranet_user'
  end

  def self.down
    remove_column :users, :password
    remove_column :users, :role
  end
end
