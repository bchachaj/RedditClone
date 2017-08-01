# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

  Sub.destroy_all

  10.times do
    Sub.create!(
    title: Faker::Book.title,
    description: Faker::Hipster.paragraph,
    user_id: 1
     )
  end
