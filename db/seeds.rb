# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


task1 =  Task.create(status: "Priority", category: "School", date: DateTime.new(2021,9, 30, 0, 0, 0), description: "Finish final project for Flatiron")
task2 =  Task.create(status: "Open", category: "Home", date: DateTime.new(2021,9, 18, 15, 0, 0), description: "Have Geico update discounts.")
task3 =  Task.create(status: "Pending", category: "Work", date: DateTime.new(2021,10, 17, 15, 0, 0), description: "Complete next section for career prep.")
task4 =  Task.create(status: "Completed", category: "Family", date: DateTime.new(2021,9, 17, 11, 30, 0), description: "Pick up Marc from his Procedure")

reminder1 = Reminder.create(category: "Follow-up", start: DateTime.new(2021,9, 20, 0, 0, 0), end: DateTime.new(2021,9, 29, 0, 0, 0), description: "Complete at least 2 hours of the project", task_id: 1)
reminder2 = Reminder.create(category: "Birthdy", end: DateTime.new(2021,10, 17, 9, 30, 0), description: "Wish Marc Happy Birthday")
reminder3 = Reminder.create(category: "Follow-up", start: DateTime.new(2021,10, 1, 0, 0, 0), end: DateTime.new(2021,10, 16, 0, 0, 0), description: "Complete career prep section", task_id: 3)

note1 = Note.create(description: "Created repo and began backend on 9/18 after changing project idea. Goal is to complete backend by 9/18 and start front-end on 9/19", task_id: 1, reminder_id: 1)
note2 = Note.create(description: "Confirmation number for dinner: 7G6PW")
