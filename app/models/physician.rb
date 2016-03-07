class Physician < ActiveRecord::Base
  belongs_to :address

  scope :no_address, -> { where(:address_id => nil) }
end
