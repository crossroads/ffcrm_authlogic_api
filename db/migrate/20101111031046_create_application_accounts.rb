class CreateApplicationAccounts < ActiveRecord::Migration
  def self.up
    create_table :application_accounts do |t|
      t.string :name
      t.string :api_key
      t.string :api_secret
      t.string :persistence_token

      t.timestamps
    end
  end

  def self.down
    drop_table :application_accounts
  end
end
