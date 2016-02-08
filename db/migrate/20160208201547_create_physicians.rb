class CreatePhysicians < ActiveRecord::Migration
  def change
    create_table :physicians do |t|
      t.string :name
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
