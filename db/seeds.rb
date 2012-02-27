# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
chicago = City.create({name: 'Chicago', state: 'IL'})
Neighborhood.create([{ name: 'South Loop', city_id: chicago.id},{ name: 'Wicker Park', city_id: chicago.id},{ name: 'Bucktown', city_id: chicago.id},{ name: 'Logan Square', city_id: chicago.id}])
Category.create([{name: 'Salon'},{name: 'Barber Shop'},{name: 'Nightlife'},{name: 'Doctor/Dentist'}])