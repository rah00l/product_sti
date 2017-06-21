class Product < ApplicationRecord
	# Validation
	validates :name, :price, :status, :inward_date, :type, :description, presence: true
end
