class AddClientCssAttribute < ActiveRecord::Migration
  def self.up
    add_column :clients, :css, :text
  end

  def self.down
    remove_column :clients, :css
  end
end
