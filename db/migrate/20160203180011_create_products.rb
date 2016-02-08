class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :name
      t.references :products_type, index: true, foreign_key: true
      t.decimal :price

      t.timestamps null: false
    end
  end
end
