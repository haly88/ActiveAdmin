class Address < ActiveRecord::Base

	has_one :patient
	has_one :physician
	has_one :practice
end
