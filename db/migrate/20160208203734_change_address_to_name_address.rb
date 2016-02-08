class ChangeAddressToNameAddress < ActiveRecord::Migration
  def change
  	rename_column :addresses, :address, :name
  end
end
