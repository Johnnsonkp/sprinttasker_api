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

# lastUser = User.create(name: "Last user in the database", username: "Last username", password: "last", email: "last@gmail.com")
# taskLast = Task.create(name:"Task with a subtask",completed:false, user: lastUser )
# taskLast.subtask.create(name: "subtask with a task", description: "Hello I am a subtask", task: task.last)



# User.destroy_all
# Task.destroy_all

# users = [
#   {
#     name: 'test',
#     username: 'test username',
#     email: 'test@gmail.com',
#     password: 'new' 
#   },   
#   { 
#     name: 'test 2',
#     username: 'test 2 username',
#     email: 'tes2t@gmail.com',
#     password: 'new'
#   },
#   { 
#     name: 'Jimmy',
#     username: 'test',
#     email: 'tes2t@gmail.com',
#     password: 'new'
#   }
# ]
# user = User.create!(users)

# task = Task.create({
#     user_id: User.last.id,
#     name:"Task with a subtask and description",
#     description: "Hello I am a task description",
#     completed:false,
# })
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


users = [
    { 
      name: 'Jimmy 2.0',
      username: 'test',
      email: 'tes2t@gmail.com',
      password: 'new'
    }
]
user = User.create!(users)
  
  newTask = Task.create!({
      user_id: User.last.id,
      name:"My seeds data isn't saving",
      description: "This is a saved seeds data description Horay!!",
      completed:true,
  })
  newTask.save 
  newSubtask = Subtask.create!({
      task_id: Task.last.id,
      name: "subtask with a task seeds last",
      description: "Pleeeeeeeese work"
  })
  newSubtask.save