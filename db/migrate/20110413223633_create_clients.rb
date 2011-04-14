class CreateClients < ActiveRecord::Migration
  def self.up
    create_table :clients do |t|
      t.string :company_name
      t.text :remarks
      t.string :intranet
      t.string :botr_player_key

      t.timestamps
    end
  end

  def self.down
    drop_table :clients
  end
end
