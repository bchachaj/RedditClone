# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
require 'faker'

  Sub.destroy_all
   subs = []
  10.times do
    subs << Sub.create!(
    title: Faker::Hipster.sentence,
    description: Faker::Hipster.paragraph,
    user_id: 1
     )
   end

  Post.destroy_all

  30.times do
    Post.create!(
    title: Faker::Hipster.sentence,
    sub: subs.sample,
    author_id: 1
     )
   end
