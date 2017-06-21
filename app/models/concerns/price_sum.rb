module PriceSum
  extend ActiveSupport::Concern

  module ClassMethods
		def price_sum(product_type:)
			where(type: product_type).
			sum(:price)
		end
  end
end
