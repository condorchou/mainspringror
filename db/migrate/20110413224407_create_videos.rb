class CreateVideos < ActiveRecord::Migration
  def self.up
    create_table :videos do |t|
      t.text :title
      t.string :location
      t.text :description
      t.integer :season
      t.integer :episode
      t.string :label
      t.text :participants
      t.datetime :release_date
      t.boolean :approved
      t.string :botr_video_key
      t.integer :views
      t.integer :client_id
      t.integer :user_id

      t.timestamps
    end
  end

  def self.down
    drop_table :videos
  end
end
