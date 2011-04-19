class AddTokenToClient < ActiveRecord::Migration
  def self.up
    add_column :clients, :token, :string
  end

  def self.down
    remove_column :clients, :token
  end
end
