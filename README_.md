# Product_STI assignment

- rails 5 application

- DATABASE (MySQL):

id 						int						yes
name 					string 				yes
price 				double				yes
color					string 				optional
status				boolean				yes
inward_date		date 					yes
type					string				yes
description		tet						yes


validations as per db field

Web client Features:
	● List Products
		○ It should list all the product fields
	● It should have below links
		○ Add new Pen
		○ Add new Notebook
	● Product (Pen) input form
		○ Name
		○ Price (Allow integers)
		○ Color (String) (Allow blue, red, yellow, black colors only)
		○ Status (checkbox for enabled/ disabled)
		○ Inward_date (Use calendar)(format mm/dd/yyyy)
		○ Description (text)
	● Product (Notebook) input form
		○ Name
		○ Price (Allow integers)
		○ Status (checkbox for enabled/ disabled)
		○ Inward_date (Use calendar)(format mm/dd/yyyy)
		○ Description (text)
	● Edit Existing products

More details:
	● After successful creation of product, it should navigate to product listings page.
	● `Product` model has `.price_sum(product_type:)` method which returns price sum of all
			the products of given type.

Example:
		Product.price_sum(product_type: 'Pen')

Technical notes:
		1. Use STI for products
		2. Use RSpec for tests
		3. Feel free to use presenters, concerns, and decorators to simplify the things.

-----------------------------------------------------------------------------------------------
