class Product < ActiveRecord::Base
	scope :tipo, -> {where(:name => "prbpro")}

  belongs_to :products_type
end
