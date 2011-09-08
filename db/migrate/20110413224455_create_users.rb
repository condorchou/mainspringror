class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :username
      t.string :location
      t.integer :client_id
      t.string :client_user_id
      t.string :role, :default => 'intranet_user'

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
