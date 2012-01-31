class CreateLikes < ActiveRecord::Migration
  def self.up
    create_table :likes do |t|
      t.integer :video_id
      t.integer :user_id
      t.timestamps
    end
    add_index :likes, [:user_id, :video_id], {:unique => true}
    add_column :videos, :likes_count, :integer, :default => 0, :null => false
  end

  def self.down
    drop_table :likes
  end
end
