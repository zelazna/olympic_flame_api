# frozen_string_literal: true

# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
FlamePath.destroy_all
path = FlamePath.create(name: 'test')
Poll.destroy_all
Poll.create(email: 'constantin.guidon@gmail.com', flame_path_id: path.id)
Poll.create(email: 'constantin.guidon@hetic.net', flame_path_id: path.id)

User.destroy_all
user = User.new(email: 'root', password: 'root')
user.save
