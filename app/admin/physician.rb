ActiveAdmin.register Physician do

	menu parent: "People"

	scope :no_address
	scope :all, :default => true

# See permitted parameters documentation:
# https://github.com/activeadmin/activeadmin/blob/master/docs/2-resource-customization.md#setting-up-strong-parameters
#
permit_params :name, :address_id
#
# or
#
# permit_params do
#   permitted = [:permitted, :attributes]
#   permitted << :other if resource.something?
#   permitted
# end


	index do
    column :name
    column :address
    actions
  end

  sidebar :help do
  	"Need help? Email us at help@example.com"
	end

end
