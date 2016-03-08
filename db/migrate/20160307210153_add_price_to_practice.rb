class AddPriceToPractice < ActiveRecord::Migration
  def change
    add_column :practices, :price, :decimal
  end
end
