class CreateBrandSegments < ActiveRecord::Migration[7.0]
  def change
    create_table :brand_segments do |t|
      t.string :segment
      t.integer :brand_id
      t.timestamps
    end
  end
end
