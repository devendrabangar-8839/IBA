class CreateUsers < ActiveRecord::Migration[7.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :father_name
      t.string :email
      t.string :password
      t.string :level
      t.integer :role
      t.datetime :date_of_birth
      t.timestamps
    end
  end
end
