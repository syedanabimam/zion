# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

ResistanceMember.create([{ name: 'Ronny', email: 'ronny@zion.com', code: 'RO-23234', phone: '234234234', skills: ["fighting", "running" ]}, { name: 'Johnny', email: 'Johnny@zion.com', code: 'JO-23234', phone: '2323424234', skills: ["fighting", "running"] }])
ResistanceShip.create([{ name: 'Jebucchudnazar', code: 'NB-324243', capacity: '8' }, { name: 'Nebucchudnazar', code: 'JB-324243', capacity: '5' }]) 
