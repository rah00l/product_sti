class Product < ApplicationRecord
	# Validation
	validates :name, :price, :inward_date, :type, :description, presence: true
	validates :status, inclusion: { in: [ true, false ] }

	include PriceSum
end
