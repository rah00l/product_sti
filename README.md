# product_sti
A small and very simple rails application

# :::: Commands Used ::::

-> rails new product_sti

-> rake db:create

-> rake db:migrate

-> rails g model product name price:float color status:boolean inward_date:date type description:text --no-test-framework

-> rails g controller products index new edit

-> Product.create name: 'New Product', price: 150.3, color: 'red', status: true, inward_date: '11/22/2012', type: 'Pencil', description: 'This is new product launched'

-> Created model files as subclasses of Product

			rails g model pen
			rails g model notebook

:: Add and configure rspec ::

Add rspec gem

group :development, :test do
  gem 'rspec-rails'
end

-> rails generate rspec:install

-> rails generate rspec:model product

This adds the following files which are used for configuration:

.rspec
spec/spec_helper.rb
spec/rails_helper.rb

Use the rspec command to run your specs:

-> bundle exec rspec

# Run only model specs
bundle exec rspec spec/models

# Run only specs for AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb

# Run only spec on line 8 of AccountsController
bundle exec rspec spec/controllers/accounts_controller_spec.rb:8
