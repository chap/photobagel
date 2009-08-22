class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.references :user
      t.string :name
      t.text :description
      t.datetime :taken_at
      t.string :longitude
      t.string :latitude
      t.string :direction

      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
