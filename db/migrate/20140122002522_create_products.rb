class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.integer :product_id

      t.timestamps
    end
  end
end
