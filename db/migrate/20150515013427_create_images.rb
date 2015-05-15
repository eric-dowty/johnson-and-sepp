class CreateImages < ActiveRecord::Migration
  def change
    create_table :images do |t|
      t.references :project, index: true, foreign_key: true
      t.string :image_file_name
      t.string :image_content_type
      t.integer :image_file_size
      t.datetime :image_updated_at
    end
  end
end
