# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all
Post.destroy_all
Comment.destroy_all



User.create!(name: "David", handle: "wolfeman", description: "He follows the rules till he breaks them, MUHHAWHAWHAWHAW!")
User.create!(name: "Mike", handle: "dropTheMike", description: "Everybody, everbody, everybody wanna be like Mike!") 
Post.create!(title: "Grocery", user_id: User.first.id, item: "Get milk", comment: "You should really think about getting milk you SOB.")
Post.create!(title: "Gym", user_id: User.second.id, item: "Pay dues", comment: "You'll stay healthy of you pay the dues so you can workout.")

Comment.create!(comment:"Got milk?", post_id: Post.first.id, user_id: User.first.id)
Comment.create!(comment:"Don't die at the gym.", post_id: Post.second.id, user_id: User.second.id)