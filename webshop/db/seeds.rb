# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Ingredient.create(name: 'Bacon', description: 'tasty')
Ingredient.create(name: 'Lettuce', description: 'healthy')
Ingredient.create(name: 'Tomato', description: 'juicy')
Ingredient.create(name: 'Pickles', description: 'funny')
Ingredient.create(name: 'Onions', description: 'roasted')
Ingredient.create(name: 'Jalapeno', description: 'spicy')
Breadtype.create(name: 'Toast', description: 'simple')
Breadtype.create(name: 'Italian', description: 'herbs')
Comment.create(name: 'Marcus', post: 'I had a BLT and it was awesome!!!!')
Comment.create(name: 'Vanessa', post: 'Srsly?!?!?!? No cheese????? Plz fix!!!11')
