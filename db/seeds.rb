# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

admin = Role.create(name: 'Admin')
reviewer = Role.create(name: 'Reviewer')
delegate = Role.create(name: 'Delegate')
faculty = Role.create(name: 'Faculty')

paul = User.create(first_name: 'paul', last_name: 'ramirez', user_name: 'per245', email: 'pramirez@uwhealth.org', roles: [admin, reviewer])
