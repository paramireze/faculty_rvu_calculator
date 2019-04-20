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

research_category = Category.create(name: 'Research', parent_category: nil)
abstract_category = Category.create(name: 'Abstracts', parent_category: research_category)
published_peer_reviewed_manu = Category.create(name: 'Published Peer-Reviewed Manuscripts', parent_category: research_category)

abstract_data_question = Question.create(category: abstract_category, label_text: 'Abstract Data', name: 'abstractData', helper_text: 'this is helper text', required: true, order: 1, is_text_area: true)
published_peer_reviewed_manu = Question.create(category: published_peer_reviewed_manu, label_text: 'Published Data', name: 'publishedData', helper_text: 'this is helper text', required: true, order: 1, is_text_area: true)

=begin
category:references
label_text:string
name:string
helper_text:string
required:boolean
order:integer
value:string
has_checkboxes:references
is_text_area:boolean
=end
