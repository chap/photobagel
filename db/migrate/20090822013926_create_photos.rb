class CreatePhotos < ActiveRecord::Migration
  def self.up
    create_table :photos do |t|
      t.references :user
      t.string :name
      t.text :description
      t.date :taken_at
      t.string :camera_model
			
			t.decimal :longitude, :precision => 15, :scale => 10
			t.decimal :latitude, :precision => 15, :scale => 10
						
			t.string :image_file_name, :image_content_type
			t.integer :image_file_size
			t.datetime :image_updated_at
			
      t.timestamps
    end
  end

  def self.down
    drop_table :photos
  end
end
