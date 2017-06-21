class Product < ApplicationRecord
	# Validation
	validates :name, :price, :inward_date, :type, :description, presence: true
	validates :status, inclusion: { in: [ true, false ] }

	def self.price_sum(product_type:)
		where(type: product_type).
		sum(:price)
	end
end
