class CreateContentAssets < ActiveRecord::Migration
  def self.up
    create_table :content_assets do |t|
      t.string :handle
      t.integer :client_id
      t.text :body
      t.timestamps
    end
  end

  def self.down
    drop_table :content_assets
  end
end
