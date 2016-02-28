# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
#10.times do |index|
  User.create(
      name: 'Sanela',
      surname: 'Grcic',
      username: 'sanela',
      email: 'sanela@gmail.com'
  )
#end

Event.create(
    name: 'Book promotion',
    description: 'Success is about hard work, smart thinking, and a team that’s passionate.  David DiBenedetto',
    image: "",
    date: "02/11/1989"
)