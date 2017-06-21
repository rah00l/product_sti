require 'spec_helper'

describe 'price_sum' do
    let!(:p0) { Product.create(name: 'product_0', price: "10",
                              status: true, inward_date: DateTime.now,
                              type: 'Pen', description: 'This is new product_0 launched!!') }

    let!(:p1) { Product.create(name: 'product_1', price: "20",
                              status: true, inward_date: DateTime.now,
                              type: 'Pen', description: 'This is new product_1 launched!!' ) }

    let!(:p2) { Product.create(name: 'product_2', price: "40",
                              status: true, inward_date: DateTime.now,
                              type: 'Notebook', description: 'This is new product_2 launched!!' ) }

    let!(:p3) { Product.create(name: 'product_3', price: "30",
                              status: true, inward_date: DateTime.now,
                              type: 'Notebook', description: 'This is new product_3 launched!!' ) }

  describe 'class methods' do
     describe 'price_sum' do
       it 'returns the four tags sorted' do
         expect(Product.price_sum(product_type: 'Pen')).to eq(30)
         expect(Product.price_sum(product_type: 'Notebook')).to eq(70)
       end
     end
   end
end
