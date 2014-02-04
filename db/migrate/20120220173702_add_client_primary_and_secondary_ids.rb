class AddClientPrimaryAndSecondaryIds < ActiveRecord::Migration
  def self.up
    add_column :clients, :primary_video_id, :integer
    add_column :clients, :secondary_video_id, :integer
  end

  def self.down
  end
end
