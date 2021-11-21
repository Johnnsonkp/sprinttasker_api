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


# eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.oT7kSePnYs7eVIsRIzIi0UEC7XBclsrO3qrnXwic8Zg



# bearer eyJhbGciOiJIUzI1NiJ9.eyJ1c2VyX2lkIjoxfQ.oT7kSePnYs7eVIsRIzIi0UEC7XBclsrO3qrnXwic8Zg 
# Authorization

# User.destroy_all
# Task.destroy_all

# lastUser = User.create!(name: "Last user in the database", username: "Last username", password: "last", email: "last@gmail.com")
# taskLast = Task.create!(name:"Task with a subtask",completed:false, description: "testing", user_id: 25)
# taskLast.subtask.create(name: "subtask with a task", description: "Hello I am a subtask", task: task.last)





# users = [
#   {
#     name: 'test',
#     username: 'test username',
#     email: 'test@gmail.com',
#     password: 'new' 
#   }
# ]
# user = User.create!(users)

N = User.create!( 
    name: 'Yes its a test mate',
    username: 'SeedsUser username',
    email: 'SeedsUser@gmail.com',
    password: 'new' 
)
Task.create!(
    user_id: N.id,
    name:"This is anotjer test",
    description: "Hello I am a task description",
    completed:false,
)




# user.first.task.create({

# })

# task = Task.create({
#     user_id: User.last.id,
#     name:"Task with a subtask and description",
#     description: "Hello I am a task description",
#     completed:false,
# })

# tasks = [
#     {   
#         user_id: user.first.id,
#         name:"Task with a subtask and description",
#         description: "Hello I am a task description",
#         completed:false,
#     },
#     {   
#         user_id: user.first.id,
#         name:"Task with a subtask and description",
#         description: "Hello I am a task description",
#         completed:false,
#     }
# ]
# task = Task.create!(tasks)

# UserTask.create!(
#     id: 1,
#     user_id: user.first.id,
#     task_id: task.first.id,
#     created_at: Time.now
# )

# user.task.create!
# task.save 

# subtask = Subtask.create({
#     task_id: Task.last.id,
#     name: "subtask with a task 3",
#     description: "Hello I am a subtask 3"
# })
# subtask.save

# tasks = [
#   {
#     name:"Task with a subtask",
#     completed:false, 
#     user_id: User.last.id
#   },
#   {
#     name:"Task with a subtask 2",
#     completed:false, 
#     user_id: User.last.id
#   }
# ]

# newUser.create_task!(tasks)

# subtasks = [
#     {
#         name: "subtask with a task", 
#         description: "Hello I am a subtask", 
#         task_id: Task.last.id
#     },
#     {
#       name:"subtask with a task 2",
#       description: "Hello I am a subtask", 
#       task_id: Task.last.id
#     }
# ]

# Subtask.create!(subtasks)




# firstUser = User.create!(id: 700, name: "first", username: "u", password: "0000", email: "u@gmail.com")
# firstTask = Task.create!(id: 800, name: "Deploy app to heroku t", description: "I need to deploy my API before 10:30 PM today", completed: false, user_id: 1000)
# subtask = Subtask.create!(name: "This is the first subtask", description: "Testing out my seeds data", task_id: task.id)