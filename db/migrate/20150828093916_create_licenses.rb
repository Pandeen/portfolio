class CreateLicenses < ActiveRecord::Migration
  def change
    create_table :licenses do |t|
      t.string :key
      t.integer :product_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
