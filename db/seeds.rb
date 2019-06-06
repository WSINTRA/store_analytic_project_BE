
require 'faker'

# ProductCategory.destroy_all
# Product.destroy_all
# Category.destroy_all
# Cart.destroy_all
# User.destroy_all


cat1 = Category.create(category_name:"New Strains")
cat2 = Category.create(category_name:"Canna Cup")
cat3 = Category.create(category_name:"Cali Cup")
cat4 = Category.create(category_name:"Brooklyn baby")
cat5 = Category.create(category_name:"Amsterdams Finest")
cat6 = Category.create(category_name:"Homegrown small-batch")

array = [cat1,cat2,cat3,cat4,cat5,cat6]

20.times do 
	User.create(
		first_name: Faker::Name.middle_name,
		last_name: Faker::Name.last_name,
		telephone: Faker::PhoneNumber.phone_number,
		street_address: Faker::Address.street_address,
		state: Faker::Address.state,
		email: Faker::Internet.email,
		password: "fake"   )
	Cart.create(user_id: User.last.id)
	
end

User.create(first_name: 'Will', last_name: 'Simpson', email: 'will.simpson85@gmail.com', admin: true, password: 'admin')
Cart.create(user_id: User.last.id)
30.times do 
	Product.create(
		name: Faker::Cannabis.strain, 
		quantity: 100,
		image: "http://thethcfactory.com/wp-content/uploads/2015/01/fresh-bud-300x300.jpg",
		price: rand(20..100),
		description: (Faker::Cannabis.health_benefit + ". Aka, " + Faker::Superhero.descriptor ) )
Product.last.category = array[rand(0..5)]
end

