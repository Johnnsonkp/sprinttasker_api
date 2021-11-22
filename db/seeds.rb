# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# task = Task.create(name:"seeds 1",completed:false)

# user = User.create([{name: "new name", username: "new username", password: "new", email: "new@gmail.com"}, {name: "new 2 name", username: "new 2 username", password: "new2", email: "new2@gmail.com"}])
# Task.create(name:"new name task",completed:false, user: user.first)

N = User.create!( 
    name: 'John Test',
    username: 'johntest',
    email: 'johntest@gmail.com',
    password: '0000' 
)
Task.create!(
    user_id: N.id,
    name:"Deploy rails API to heroku",
    description: "Deploy rails API to heroku",
    completed:false
)
########