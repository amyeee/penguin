class CreateItems < ActiveRecord::Migration
  def self.up 
    create_table :items, :force => true do |t|
      t.timestamps
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
    end
  end

  def self.down
    drop_table :items
  end
end