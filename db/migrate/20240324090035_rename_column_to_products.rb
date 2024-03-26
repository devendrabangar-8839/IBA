class RenameColumnToProducts < ActiveRecord::Migration[7.0]
  def change
    rename_column :products, :nodel_no, :model_no
  end
end
