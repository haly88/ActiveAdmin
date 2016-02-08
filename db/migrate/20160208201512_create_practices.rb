class CreatePractices < ActiveRecord::Migration
  def change
    create_table :practices do |t|
      t.string :name
      t.references :address, index: true, foreign_key: true

      t.timestamps null: false
    end
  end
end
