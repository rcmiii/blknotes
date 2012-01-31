# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
City.create({name: 'Chicago'})
Neighborhood.create([{ name: 'South Loop', city_id: 1},{ name: 'Wicker Park', city_id: 1},{ name: 'Bucktown', city_id: 1},{ name: 'Logan Square', city_id: 1}])
