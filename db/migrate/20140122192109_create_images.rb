class CreateImages < ActiveRecord::Migration
  def change
    drop_table :images
    
    create_table :images do |t|
      t.string :imageURL
      t.integer :product_id

      t.timestamps
    end
  end
end
