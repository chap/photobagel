class CreateUsers < ActiveRecord::Migration
  def self.up
    create_table :users do |t|
      t.string :full_email
      t.string :email_name
      t.string :permalink

      t.timestamps
    end
  end

  def self.down
    drop_table :users
  end
end
