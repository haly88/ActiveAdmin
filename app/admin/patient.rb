ActiveAdmin.register Patient do

	menu parent: "People"

	config.sort_order = 'name_asc'

	scope :no_address
	scope :all, :default => true

	filter :name, label: 'Patient Name'
	filter :address

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

	form do |f|
	  f.semantic_errors # shows errors on :base
	  inputs 'Details' do
	  	input :name
	  	input :address
	  end          # builds an input field for every attribute
	  f.actions         # adds the 'Submit' and 'Cancel' buttons
	end

end
