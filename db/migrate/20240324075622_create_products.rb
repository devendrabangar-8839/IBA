class CreateProducts < ActiveRecord::Migration[7.0]
  def change
    create_table :products do |t|
      t.integer :brand_id
      t.integer :brand_segment_id
      t.string :nodel_no
      t.string :product_detail
      t.string :warranty_details
      t.integer :price
      t.string :review_video_link
      t.timestamps
    end
  end
end
