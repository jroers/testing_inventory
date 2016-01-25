class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.text :description
      t.string :category
      t.string :sku
      t.decimal :wholesale
      t.decimal :retail

      t.timestamps null: false
    end
  end
end
