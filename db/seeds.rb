# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
Poll.destroy_all
Poll.create(email: 'constantin.guidon@gmail.com', fb_id: 'azertyuiop', poll_choice_id: 1)
Poll.create(email: 'constantin.guidon@hetic.net', fb_id: 'qsdfghjklm', poll_choice_id: 2)
