ActiveAdmin.register Physician do

	form partial: 'form'

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
		selectable_column
    column :name
    column :address
    actions
  end

  sidebar :evisit_sidebar do
  	"eVisit sidebar"
	end

end
