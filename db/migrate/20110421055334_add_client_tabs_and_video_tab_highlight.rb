class AddClientTabsAndVideoTabHighlight < ActiveRecord::Migration
  def self.up
    add_column :clients, :tab_content_asset, :string
    add_column :videos, :tab_highlight, :string
  end

  def self.down
    remove_column :clients, :tab_content_asset
    remove_column :videos, :tab_hightlight
  end
end
